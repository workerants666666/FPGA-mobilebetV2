set moduleName compute_output
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
set C_modelName {compute_output}
set C_modelType { void 0 }
set C_modelArgList {
	{ weight_V int 16 regular {axi_master 0}  }
	{ weight_V_offset int 31 regular  }
	{ out_V int 64 regular {axi_master 1}  }
	{ out_V_offset int 29 regular  }
	{ fm_in_buff_0_V int 16 regular {array 3249 { 1 3 } 1 1 }  }
	{ fm_in_buff_1_V int 16 regular {array 3249 { 1 3 } 1 1 }  }
	{ fm_in_buff_2_V int 16 regular {array 3249 { 1 3 } 1 1 }  }
	{ bias_buff_0_V_read int 16 regular  }
	{ bias_buff_1_V_read int 16 regular  }
	{ bias_buff_2_V_read int 16 regular  }
	{ bias_buff_3_V_read int 16 regular  }
	{ bias_buff_4_V_read int 16 regular  }
	{ bias_buff_5_V_read int 16 regular  }
	{ bias_buff_6_V_read int 16 regular  }
	{ bias_buff_7_V_read int 16 regular  }
	{ bias_buff_8_V_read int 16 regular  }
	{ bias_buff_9_V_read int 16 regular  }
	{ bias_buff_10_V_read int 16 regular  }
	{ bias_buff_11_V_read int 16 regular  }
	{ bias_buff_12_V_read int 16 regular  }
	{ bias_buff_13_V_read int 16 regular  }
	{ bias_buff_14_V_read int 16 regular  }
	{ bias_buff_15_V_read int 16 regular  }
	{ bias_buff_16_V_read int 16 regular  }
	{ bias_buff_17_V_read int 16 regular  }
	{ bias_buff_18_V_read int 16 regular  }
	{ bias_buff_19_V_read int 16 regular  }
	{ bias_buff_20_V_read int 16 regular  }
	{ bias_buff_21_V_read int 16 regular  }
	{ bias_buff_22_V_read int 16 regular  }
	{ bias_buff_23_V_read int 16 regular  }
	{ bias_buff_24_V_read int 16 regular  }
	{ bias_buff_25_V_read int 16 regular  }
	{ bias_buff_26_V_read int 16 regular  }
	{ bias_buff_27_V_read int 16 regular  }
	{ bias_buff_28_V_read int 16 regular  }
	{ bias_buff_29_V_read int 16 regular  }
	{ bias_buff_30_V_read int 16 regular  }
	{ bias_buff_31_V_read int 16 regular  }
	{ row int 32 regular  }
	{ col int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "weight_V", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weight_V_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "out_V", "interface" : "axi_master", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_V_offset", "interface" : "wire", "bitwidth" : 29, "direction" : "READONLY"} , 
 	{ "Name" : "fm_in_buff_0_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "fm_in_buff_1_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "fm_in_buff_2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_0_V_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_1_V_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_2_V_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_3_V_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_4_V_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_5_V_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_6_V_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_7_V_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_8_V_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_9_V_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_10_V_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_11_V_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_12_V_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_13_V_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_14_V_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_15_V_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_16_V_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_17_V_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_18_V_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_19_V_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_20_V_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_21_V_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_22_V_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_23_V_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_24_V_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_25_V_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_26_V_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_27_V_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_28_V_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_29_V_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_30_V_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_31_V_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 141
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
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
	{ m_axi_out_V_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_out_V_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_out_V_AWADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_out_V_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_out_V_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_out_V_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_out_V_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_out_V_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_out_V_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_out_V_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_out_V_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_out_V_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_out_V_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_out_V_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_out_V_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_out_V_WDATA sc_out sc_lv 64 signal 2 } 
	{ m_axi_out_V_WSTRB sc_out sc_lv 8 signal 2 } 
	{ m_axi_out_V_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_out_V_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_out_V_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_out_V_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_out_V_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_out_V_ARADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_out_V_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_out_V_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_out_V_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_out_V_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_out_V_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_out_V_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_out_V_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_out_V_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_out_V_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_out_V_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_out_V_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_out_V_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_out_V_RDATA sc_in sc_lv 64 signal 2 } 
	{ m_axi_out_V_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_out_V_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_out_V_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_out_V_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_out_V_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_out_V_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_out_V_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_out_V_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_out_V_BUSER sc_in sc_lv 1 signal 2 } 
	{ out_V_offset sc_in sc_lv 29 signal 3 } 
	{ fm_in_buff_0_V_address0 sc_out sc_lv 12 signal 4 } 
	{ fm_in_buff_0_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ fm_in_buff_0_V_q0 sc_in sc_lv 16 signal 4 } 
	{ fm_in_buff_1_V_address0 sc_out sc_lv 12 signal 5 } 
	{ fm_in_buff_1_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ fm_in_buff_1_V_q0 sc_in sc_lv 16 signal 5 } 
	{ fm_in_buff_2_V_address0 sc_out sc_lv 12 signal 6 } 
	{ fm_in_buff_2_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ fm_in_buff_2_V_q0 sc_in sc_lv 16 signal 6 } 
	{ bias_buff_0_V_read sc_in sc_lv 16 signal 7 } 
	{ bias_buff_1_V_read sc_in sc_lv 16 signal 8 } 
	{ bias_buff_2_V_read sc_in sc_lv 16 signal 9 } 
	{ bias_buff_3_V_read sc_in sc_lv 16 signal 10 } 
	{ bias_buff_4_V_read sc_in sc_lv 16 signal 11 } 
	{ bias_buff_5_V_read sc_in sc_lv 16 signal 12 } 
	{ bias_buff_6_V_read sc_in sc_lv 16 signal 13 } 
	{ bias_buff_7_V_read sc_in sc_lv 16 signal 14 } 
	{ bias_buff_8_V_read sc_in sc_lv 16 signal 15 } 
	{ bias_buff_9_V_read sc_in sc_lv 16 signal 16 } 
	{ bias_buff_10_V_read sc_in sc_lv 16 signal 17 } 
	{ bias_buff_11_V_read sc_in sc_lv 16 signal 18 } 
	{ bias_buff_12_V_read sc_in sc_lv 16 signal 19 } 
	{ bias_buff_13_V_read sc_in sc_lv 16 signal 20 } 
	{ bias_buff_14_V_read sc_in sc_lv 16 signal 21 } 
	{ bias_buff_15_V_read sc_in sc_lv 16 signal 22 } 
	{ bias_buff_16_V_read sc_in sc_lv 16 signal 23 } 
	{ bias_buff_17_V_read sc_in sc_lv 16 signal 24 } 
	{ bias_buff_18_V_read sc_in sc_lv 16 signal 25 } 
	{ bias_buff_19_V_read sc_in sc_lv 16 signal 26 } 
	{ bias_buff_20_V_read sc_in sc_lv 16 signal 27 } 
	{ bias_buff_21_V_read sc_in sc_lv 16 signal 28 } 
	{ bias_buff_22_V_read sc_in sc_lv 16 signal 29 } 
	{ bias_buff_23_V_read sc_in sc_lv 16 signal 30 } 
	{ bias_buff_24_V_read sc_in sc_lv 16 signal 31 } 
	{ bias_buff_25_V_read sc_in sc_lv 16 signal 32 } 
	{ bias_buff_26_V_read sc_in sc_lv 16 signal 33 } 
	{ bias_buff_27_V_read sc_in sc_lv 16 signal 34 } 
	{ bias_buff_28_V_read sc_in sc_lv 16 signal 35 } 
	{ bias_buff_29_V_read sc_in sc_lv 16 signal 36 } 
	{ bias_buff_30_V_read sc_in sc_lv 16 signal 37 } 
	{ bias_buff_31_V_read sc_in sc_lv 16 signal 38 } 
	{ row sc_in sc_lv 32 signal 39 } 
	{ col sc_in sc_lv 32 signal 40 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
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
 	{ "name": "m_axi_out_V_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "AWVALID" }} , 
 	{ "name": "m_axi_out_V_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "AWREADY" }} , 
 	{ "name": "m_axi_out_V_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_V", "role": "AWADDR" }} , 
 	{ "name": "m_axi_out_V_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "AWID" }} , 
 	{ "name": "m_axi_out_V_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_V", "role": "AWLEN" }} , 
 	{ "name": "m_axi_out_V_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_V", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_out_V_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_V", "role": "AWBURST" }} , 
 	{ "name": "m_axi_out_V_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_V", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_out_V_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_V", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_out_V_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_V", "role": "AWPROT" }} , 
 	{ "name": "m_axi_out_V_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_V", "role": "AWQOS" }} , 
 	{ "name": "m_axi_out_V_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_V", "role": "AWREGION" }} , 
 	{ "name": "m_axi_out_V_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "AWUSER" }} , 
 	{ "name": "m_axi_out_V_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "WVALID" }} , 
 	{ "name": "m_axi_out_V_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "WREADY" }} , 
 	{ "name": "m_axi_out_V_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_V", "role": "WDATA" }} , 
 	{ "name": "m_axi_out_V_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_V", "role": "WSTRB" }} , 
 	{ "name": "m_axi_out_V_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "WLAST" }} , 
 	{ "name": "m_axi_out_V_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "WID" }} , 
 	{ "name": "m_axi_out_V_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "WUSER" }} , 
 	{ "name": "m_axi_out_V_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "ARVALID" }} , 
 	{ "name": "m_axi_out_V_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "ARREADY" }} , 
 	{ "name": "m_axi_out_V_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_V", "role": "ARADDR" }} , 
 	{ "name": "m_axi_out_V_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "ARID" }} , 
 	{ "name": "m_axi_out_V_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_V", "role": "ARLEN" }} , 
 	{ "name": "m_axi_out_V_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_V", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_out_V_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_V", "role": "ARBURST" }} , 
 	{ "name": "m_axi_out_V_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_V", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_out_V_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_V", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_out_V_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_V", "role": "ARPROT" }} , 
 	{ "name": "m_axi_out_V_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_V", "role": "ARQOS" }} , 
 	{ "name": "m_axi_out_V_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_V", "role": "ARREGION" }} , 
 	{ "name": "m_axi_out_V_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "ARUSER" }} , 
 	{ "name": "m_axi_out_V_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "RVALID" }} , 
 	{ "name": "m_axi_out_V_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "RREADY" }} , 
 	{ "name": "m_axi_out_V_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "out_V", "role": "RDATA" }} , 
 	{ "name": "m_axi_out_V_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "RLAST" }} , 
 	{ "name": "m_axi_out_V_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "RID" }} , 
 	{ "name": "m_axi_out_V_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "RUSER" }} , 
 	{ "name": "m_axi_out_V_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_V", "role": "RRESP" }} , 
 	{ "name": "m_axi_out_V_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "BVALID" }} , 
 	{ "name": "m_axi_out_V_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "BREADY" }} , 
 	{ "name": "m_axi_out_V_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_V", "role": "BRESP" }} , 
 	{ "name": "m_axi_out_V_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "BID" }} , 
 	{ "name": "m_axi_out_V_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "BUSER" }} , 
 	{ "name": "out_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":29, "type": "signal", "bundle":{"name": "out_V_offset", "role": "default" }} , 
 	{ "name": "fm_in_buff_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "fm_in_buff_0_V", "role": "address0" }} , 
 	{ "name": "fm_in_buff_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_in_buff_0_V", "role": "ce0" }} , 
 	{ "name": "fm_in_buff_0_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fm_in_buff_0_V", "role": "q0" }} , 
 	{ "name": "fm_in_buff_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "fm_in_buff_1_V", "role": "address0" }} , 
 	{ "name": "fm_in_buff_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_in_buff_1_V", "role": "ce0" }} , 
 	{ "name": "fm_in_buff_1_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fm_in_buff_1_V", "role": "q0" }} , 
 	{ "name": "fm_in_buff_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "fm_in_buff_2_V", "role": "address0" }} , 
 	{ "name": "fm_in_buff_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_in_buff_2_V", "role": "ce0" }} , 
 	{ "name": "fm_in_buff_2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fm_in_buff_2_V", "role": "q0" }} , 
 	{ "name": "bias_buff_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_0_V_read", "role": "default" }} , 
 	{ "name": "bias_buff_1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_1_V_read", "role": "default" }} , 
 	{ "name": "bias_buff_2_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_2_V_read", "role": "default" }} , 
 	{ "name": "bias_buff_3_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_3_V_read", "role": "default" }} , 
 	{ "name": "bias_buff_4_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_4_V_read", "role": "default" }} , 
 	{ "name": "bias_buff_5_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_5_V_read", "role": "default" }} , 
 	{ "name": "bias_buff_6_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_6_V_read", "role": "default" }} , 
 	{ "name": "bias_buff_7_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_7_V_read", "role": "default" }} , 
 	{ "name": "bias_buff_8_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_8_V_read", "role": "default" }} , 
 	{ "name": "bias_buff_9_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_9_V_read", "role": "default" }} , 
 	{ "name": "bias_buff_10_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_10_V_read", "role": "default" }} , 
 	{ "name": "bias_buff_11_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_11_V_read", "role": "default" }} , 
 	{ "name": "bias_buff_12_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_12_V_read", "role": "default" }} , 
 	{ "name": "bias_buff_13_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_13_V_read", "role": "default" }} , 
 	{ "name": "bias_buff_14_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_14_V_read", "role": "default" }} , 
 	{ "name": "bias_buff_15_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_15_V_read", "role": "default" }} , 
 	{ "name": "bias_buff_16_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_16_V_read", "role": "default" }} , 
 	{ "name": "bias_buff_17_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_17_V_read", "role": "default" }} , 
 	{ "name": "bias_buff_18_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_18_V_read", "role": "default" }} , 
 	{ "name": "bias_buff_19_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_19_V_read", "role": "default" }} , 
 	{ "name": "bias_buff_20_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_20_V_read", "role": "default" }} , 
 	{ "name": "bias_buff_21_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_21_V_read", "role": "default" }} , 
 	{ "name": "bias_buff_22_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_22_V_read", "role": "default" }} , 
 	{ "name": "bias_buff_23_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_23_V_read", "role": "default" }} , 
 	{ "name": "bias_buff_24_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_24_V_read", "role": "default" }} , 
 	{ "name": "bias_buff_25_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_25_V_read", "role": "default" }} , 
 	{ "name": "bias_buff_26_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_26_V_read", "role": "default" }} , 
 	{ "name": "bias_buff_27_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_27_V_read", "role": "default" }} , 
 	{ "name": "bias_buff_28_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_28_V_read", "role": "default" }} , 
 	{ "name": "bias_buff_29_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_29_V_read", "role": "default" }} , 
 	{ "name": "bias_buff_30_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_30_V_read", "role": "default" }} , 
 	{ "name": "bias_buff_31_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_31_V_read", "role": "default" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "compute_output",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29241", "EstimateLatencyMax" : "29241",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dataflow_in_loop_fu_354"}],
		"Port" : [
			{"Name" : "weight_V", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_in_loop_fu_354", "Port" : "weight_V"}]},
			{"Name" : "weight_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_V", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_in_loop_fu_354", "Port" : "out_V"}]},
			{"Name" : "out_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "fm_in_buff_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_in_loop_fu_354", "Port" : "fm_in_buff_0_V"}]},
			{"Name" : "fm_in_buff_1_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_in_loop_fu_354", "Port" : "fm_in_buff_1_V"}]},
			{"Name" : "fm_in_buff_2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_in_loop_fu_354", "Port" : "fm_in_buff_2_V"}]},
			{"Name" : "bias_buff_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buff_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buff_2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buff_3_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buff_4_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buff_5_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buff_6_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buff_7_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buff_8_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buff_9_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buff_10_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buff_11_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buff_12_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buff_13_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buff_14_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buff_15_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buff_16_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buff_17_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buff_18_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buff_19_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buff_20_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buff_21_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buff_22_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buff_23_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buff_24_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buff_25_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buff_26_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buff_27_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buff_28_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buff_29_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buff_30_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_buff_31_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "37", "71", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112"],
		"CDFG" : "dataflow_in_loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7308", "EstimateLatencyMax" : "7308",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "34", "Name" : "load_weight5427_U0", "ReadyCount" : "load_weight5427_U0_ap_ready_count"},
			{"ID" : "37", "Name" : "compute5_U0", "ReadyCount" : "compute5_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "71", "Name" : "store_output_U0"}],
		"Port" : [
			{"Name" : "weight_V", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "load_weight5427_U0", "Port" : "weight_V"}]},
			{"Name" : "weight_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "ch_0_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "fm_in_buff_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "compute5_U0", "Port" : "fm_in_buff_0_V"}]},
			{"Name" : "fm_in_buff_1_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "compute5_U0", "Port" : "fm_in_buff_1_V"}]},
			{"Name" : "fm_in_buff_2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "compute5_U0", "Port" : "fm_in_buff_2_V"}]},
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
			{"Name" : "out_V", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "store_output_U0", "Port" : "out_V"}]},
			{"Name" : "out_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.wt_buff_0_0_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.wt_buff_0_1_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.wt_buff_0_2_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.wt_buff_1_0_V_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.wt_buff_1_1_V_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.wt_buff_1_2_V_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.wt_buff_2_0_V_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.wt_buff_2_1_V_U", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.wt_buff_2_2_V_U", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.wt_buff_3_0_V_U", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.wt_buff_3_1_V_U", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.wt_buff_3_2_V_U", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.wt_buff_4_0_V_U", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.wt_buff_4_1_V_U", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.wt_buff_4_2_V_U", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.wt_buff_5_0_V_U", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.wt_buff_5_1_V_U", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.wt_buff_5_2_V_U", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.wt_buff_6_0_V_U", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.wt_buff_6_1_V_U", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.wt_buff_6_2_V_U", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.wt_buff_7_0_V_U", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.wt_buff_7_1_V_U", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.wt_buff_7_2_V_U", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.fm_out_buff_0_V_U", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.fm_out_buff_1_V_U", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.fm_out_buff_2_V_U", "Parent" : "1"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.fm_out_buff_3_V_U", "Parent" : "1"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.fm_out_buff_4_V_U", "Parent" : "1"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.fm_out_buff_5_V_U", "Parent" : "1"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.fm_out_buff_6_V_U", "Parent" : "1"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.fm_out_buff_7_V_U", "Parent" : "1"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.load_weight5427_U0", "Parent" : "1", "Child" : ["35", "36"],
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
			{"Name" : "wt_buff_0_0_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "2"},
			{"Name" : "wt_buff_0_1_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "3"},
			{"Name" : "wt_buff_0_2_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "4"},
			{"Name" : "wt_buff_1_0_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "5"},
			{"Name" : "wt_buff_1_1_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "6"},
			{"Name" : "wt_buff_1_2_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "7"},
			{"Name" : "wt_buff_2_0_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "8"},
			{"Name" : "wt_buff_2_1_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "9"},
			{"Name" : "wt_buff_2_2_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "10"},
			{"Name" : "wt_buff_3_0_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "11"},
			{"Name" : "wt_buff_3_1_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "12"},
			{"Name" : "wt_buff_3_2_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "13"},
			{"Name" : "wt_buff_4_0_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "14"},
			{"Name" : "wt_buff_4_1_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "15"},
			{"Name" : "wt_buff_4_2_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "16"},
			{"Name" : "wt_buff_5_0_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "17"},
			{"Name" : "wt_buff_5_1_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "18"},
			{"Name" : "wt_buff_5_2_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "19"},
			{"Name" : "wt_buff_6_0_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "20"},
			{"Name" : "wt_buff_6_1_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "21"},
			{"Name" : "wt_buff_6_2_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "22"},
			{"Name" : "wt_buff_7_0_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "23"},
			{"Name" : "wt_buff_7_1_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "24"},
			{"Name" : "wt_buff_7_2_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "25"},
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
			{"Name" : "ch_0_i_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "76",
				"BlockSignal" : [
					{"Name" : "ch_0_i_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_0_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "77",
				"BlockSignal" : [
					{"Name" : "bias_buff_0_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_1_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "78",
				"BlockSignal" : [
					{"Name" : "bias_buff_1_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_2_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "79",
				"BlockSignal" : [
					{"Name" : "bias_buff_2_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_3_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "80",
				"BlockSignal" : [
					{"Name" : "bias_buff_3_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_4_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "81",
				"BlockSignal" : [
					{"Name" : "bias_buff_4_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_5_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "82",
				"BlockSignal" : [
					{"Name" : "bias_buff_5_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_6_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "83",
				"BlockSignal" : [
					{"Name" : "bias_buff_6_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_7_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "84",
				"BlockSignal" : [
					{"Name" : "bias_buff_7_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_8_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "85",
				"BlockSignal" : [
					{"Name" : "bias_buff_8_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_9_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "86",
				"BlockSignal" : [
					{"Name" : "bias_buff_9_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_10_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "87",
				"BlockSignal" : [
					{"Name" : "bias_buff_10_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_11_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "88",
				"BlockSignal" : [
					{"Name" : "bias_buff_11_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_12_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "89",
				"BlockSignal" : [
					{"Name" : "bias_buff_12_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_13_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "90",
				"BlockSignal" : [
					{"Name" : "bias_buff_13_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_14_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "91",
				"BlockSignal" : [
					{"Name" : "bias_buff_14_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_15_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "92",
				"BlockSignal" : [
					{"Name" : "bias_buff_15_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_16_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "93",
				"BlockSignal" : [
					{"Name" : "bias_buff_16_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_17_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "94",
				"BlockSignal" : [
					{"Name" : "bias_buff_17_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_18_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "95",
				"BlockSignal" : [
					{"Name" : "bias_buff_18_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_19_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "96",
				"BlockSignal" : [
					{"Name" : "bias_buff_19_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_20_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "97",
				"BlockSignal" : [
					{"Name" : "bias_buff_20_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_21_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "98",
				"BlockSignal" : [
					{"Name" : "bias_buff_21_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_22_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "99",
				"BlockSignal" : [
					{"Name" : "bias_buff_22_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_23_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "100",
				"BlockSignal" : [
					{"Name" : "bias_buff_23_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_24_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "101",
				"BlockSignal" : [
					{"Name" : "bias_buff_24_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_25_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "102",
				"BlockSignal" : [
					{"Name" : "bias_buff_25_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_26_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "103",
				"BlockSignal" : [
					{"Name" : "bias_buff_26_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_27_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "104",
				"BlockSignal" : [
					{"Name" : "bias_buff_27_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_28_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "105",
				"BlockSignal" : [
					{"Name" : "bias_buff_28_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_29_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "106",
				"BlockSignal" : [
					{"Name" : "bias_buff_29_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_30_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "107",
				"BlockSignal" : [
					{"Name" : "bias_buff_30_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_31_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "108",
				"BlockSignal" : [
					{"Name" : "bias_buff_31_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "row_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "71", "DependentChan" : "109",
				"BlockSignal" : [
					{"Name" : "row_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "col_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "71", "DependentChan" : "110",
				"BlockSignal" : [
					{"Name" : "col_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_V_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "71", "DependentChan" : "111",
				"BlockSignal" : [
					{"Name" : "out_V_offset_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.load_weight5427_U0.conv_urem_5ns_5nscud_U14", "Parent" : "34"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.load_weight5427_U0.conv_mac_muladd_6dEe_U15", "Parent" : "34"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.compute5_U0", "Parent" : "1", "Child" : ["38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70"],
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
			{"Name" : "wt_buff_0_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "2"},
			{"Name" : "wt_buff_0_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "3"},
			{"Name" : "wt_buff_0_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "4"},
			{"Name" : "wt_buff_1_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "5"},
			{"Name" : "wt_buff_1_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "6"},
			{"Name" : "wt_buff_1_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "7"},
			{"Name" : "wt_buff_2_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "8"},
			{"Name" : "wt_buff_2_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "9"},
			{"Name" : "wt_buff_2_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "10"},
			{"Name" : "wt_buff_3_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "11"},
			{"Name" : "wt_buff_3_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "12"},
			{"Name" : "wt_buff_3_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "13"},
			{"Name" : "wt_buff_4_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "14"},
			{"Name" : "wt_buff_4_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "15"},
			{"Name" : "wt_buff_4_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "16"},
			{"Name" : "wt_buff_5_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "17"},
			{"Name" : "wt_buff_5_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "18"},
			{"Name" : "wt_buff_5_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "19"},
			{"Name" : "wt_buff_6_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "20"},
			{"Name" : "wt_buff_6_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "21"},
			{"Name" : "wt_buff_6_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "22"},
			{"Name" : "wt_buff_7_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "23"},
			{"Name" : "wt_buff_7_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "24"},
			{"Name" : "wt_buff_7_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "25"},
			{"Name" : "bias_buff_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "77",
				"BlockSignal" : [
					{"Name" : "bias_buff_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "78",
				"BlockSignal" : [
					{"Name" : "bias_buff_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "79",
				"BlockSignal" : [
					{"Name" : "bias_buff_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "80",
				"BlockSignal" : [
					{"Name" : "bias_buff_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_4_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "81",
				"BlockSignal" : [
					{"Name" : "bias_buff_4_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_5_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "82",
				"BlockSignal" : [
					{"Name" : "bias_buff_5_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_6_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "83",
				"BlockSignal" : [
					{"Name" : "bias_buff_6_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_7_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "84",
				"BlockSignal" : [
					{"Name" : "bias_buff_7_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_8_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "85",
				"BlockSignal" : [
					{"Name" : "bias_buff_8_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_9_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "86",
				"BlockSignal" : [
					{"Name" : "bias_buff_9_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_10_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "87",
				"BlockSignal" : [
					{"Name" : "bias_buff_10_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_11_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "88",
				"BlockSignal" : [
					{"Name" : "bias_buff_11_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_12_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "89",
				"BlockSignal" : [
					{"Name" : "bias_buff_12_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_13_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "90",
				"BlockSignal" : [
					{"Name" : "bias_buff_13_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_14_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "91",
				"BlockSignal" : [
					{"Name" : "bias_buff_14_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_15_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "92",
				"BlockSignal" : [
					{"Name" : "bias_buff_15_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_16_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "93",
				"BlockSignal" : [
					{"Name" : "bias_buff_16_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_17_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "94",
				"BlockSignal" : [
					{"Name" : "bias_buff_17_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_18_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "95",
				"BlockSignal" : [
					{"Name" : "bias_buff_18_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_19_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "96",
				"BlockSignal" : [
					{"Name" : "bias_buff_19_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_20_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "97",
				"BlockSignal" : [
					{"Name" : "bias_buff_20_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_21_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "98",
				"BlockSignal" : [
					{"Name" : "bias_buff_21_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_22_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "99",
				"BlockSignal" : [
					{"Name" : "bias_buff_22_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_23_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "100",
				"BlockSignal" : [
					{"Name" : "bias_buff_23_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_24_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "101",
				"BlockSignal" : [
					{"Name" : "bias_buff_24_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_25_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "102",
				"BlockSignal" : [
					{"Name" : "bias_buff_25_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_26_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "103",
				"BlockSignal" : [
					{"Name" : "bias_buff_26_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_27_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "104",
				"BlockSignal" : [
					{"Name" : "bias_buff_27_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_28_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "105",
				"BlockSignal" : [
					{"Name" : "bias_buff_28_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_29_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "106",
				"BlockSignal" : [
					{"Name" : "bias_buff_29_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_30_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "107",
				"BlockSignal" : [
					{"Name" : "bias_buff_30_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_31_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "108",
				"BlockSignal" : [
					{"Name" : "bias_buff_31_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_V_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "76",
				"BlockSignal" : [
					{"Name" : "bias_buff_V_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fm_out_buff_0_V", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "71", "DependentChan" : "26"},
			{"Name" : "fm_out_buff_1_V", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "71", "DependentChan" : "27"},
			{"Name" : "fm_out_buff_2_V", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "71", "DependentChan" : "28"},
			{"Name" : "fm_out_buff_3_V", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "71", "DependentChan" : "29"},
			{"Name" : "fm_out_buff_4_V", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "71", "DependentChan" : "30"},
			{"Name" : "fm_out_buff_5_V", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "71", "DependentChan" : "31"},
			{"Name" : "fm_out_buff_6_V", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "71", "DependentChan" : "32"},
			{"Name" : "fm_out_buff_7_V", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "71", "DependentChan" : "33"},
			{"Name" : "bias_buff_V_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "71", "DependentChan" : "112",
				"BlockSignal" : [
					{"Name" : "bias_buff_V_offset_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mux_325_16_1_1_U116", "Parent" : "37"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mux_325_16_1_1_U117", "Parent" : "37"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mux_325_16_1_1_U118", "Parent" : "37"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mux_325_16_1_1_U119", "Parent" : "37"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mux_325_16_1_1_U120", "Parent" : "37"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mux_325_16_1_1_U121", "Parent" : "37"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mux_325_16_1_1_U122", "Parent" : "37"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mux_325_16_1_1_U123", "Parent" : "37"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mac_muladd_7eOg_U124", "Parent" : "37"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U125", "Parent" : "37"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U126", "Parent" : "37"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U127", "Parent" : "37"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U128", "Parent" : "37"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U129", "Parent" : "37"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U130", "Parent" : "37"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U131", "Parent" : "37"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U132", "Parent" : "37"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U133", "Parent" : "37"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U134", "Parent" : "37"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U135", "Parent" : "37"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U136", "Parent" : "37"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U137", "Parent" : "37"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U138", "Parent" : "37"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U139", "Parent" : "37"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U140", "Parent" : "37"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U141", "Parent" : "37"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U142", "Parent" : "37"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U143", "Parent" : "37"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U144", "Parent" : "37"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U145", "Parent" : "37"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U146", "Parent" : "37"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U147", "Parent" : "37"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U148", "Parent" : "37"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.store_output_U0", "Parent" : "1", "Child" : ["72", "73", "74", "75"],
		"CDFG" : "store_output",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1590", "EstimateLatencyMax" : "1590",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "out_V", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_V_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "out_V_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "out_V_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "111",
				"BlockSignal" : [
					{"Name" : "out_V_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fm_out_buff_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "26"},
			{"Name" : "fm_out_buff_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "27"},
			{"Name" : "fm_out_buff_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "28"},
			{"Name" : "fm_out_buff_3_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "29"},
			{"Name" : "fm_out_buff_4_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "30"},
			{"Name" : "fm_out_buff_5_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "31"},
			{"Name" : "fm_out_buff_6_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "32"},
			{"Name" : "fm_out_buff_7_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "33"},
			{"Name" : "ch_0_i_c1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "37", "DependentChan" : "112",
				"BlockSignal" : [
					{"Name" : "ch_0_i_c1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "row_c", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "109",
				"BlockSignal" : [
					{"Name" : "row_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "col_c", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "110",
				"BlockSignal" : [
					{"Name" : "col_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.store_output_U0.conv_urem_11ns_6ng8j_U221", "Parent" : "71"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.store_output_U0.conv_urem_11ns_6ng8j_U222", "Parent" : "71"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.store_output_U0.conv_mac_muladd_1hbi_U223", "Parent" : "71"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.store_output_U0.conv_mac_muladd_1hbi_U224", "Parent" : "71"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.ch_0_i_c_U", "Parent" : "1"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.bias_buff_0_V_c_U", "Parent" : "1"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.bias_buff_1_V_c_U", "Parent" : "1"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.bias_buff_2_V_c_U", "Parent" : "1"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.bias_buff_3_V_c_U", "Parent" : "1"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.bias_buff_4_V_c_U", "Parent" : "1"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.bias_buff_5_V_c_U", "Parent" : "1"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.bias_buff_6_V_c_U", "Parent" : "1"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.bias_buff_7_V_c_U", "Parent" : "1"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.bias_buff_8_V_c_U", "Parent" : "1"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.bias_buff_9_V_c_U", "Parent" : "1"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.bias_buff_10_V_c_U", "Parent" : "1"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.bias_buff_11_V_c_U", "Parent" : "1"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.bias_buff_12_V_c_U", "Parent" : "1"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.bias_buff_13_V_c_U", "Parent" : "1"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.bias_buff_14_V_c_U", "Parent" : "1"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.bias_buff_15_V_c_U", "Parent" : "1"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.bias_buff_16_V_c_U", "Parent" : "1"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.bias_buff_17_V_c_U", "Parent" : "1"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.bias_buff_18_V_c_U", "Parent" : "1"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.bias_buff_19_V_c_U", "Parent" : "1"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.bias_buff_20_V_c_U", "Parent" : "1"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.bias_buff_21_V_c_U", "Parent" : "1"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.bias_buff_22_V_c_U", "Parent" : "1"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.bias_buff_23_V_c_U", "Parent" : "1"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.bias_buff_24_V_c_U", "Parent" : "1"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.bias_buff_25_V_c_U", "Parent" : "1"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.bias_buff_26_V_c_U", "Parent" : "1"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.bias_buff_27_V_c_U", "Parent" : "1"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.bias_buff_28_V_c_U", "Parent" : "1"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.bias_buff_29_V_c_U", "Parent" : "1"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.bias_buff_30_V_c_U", "Parent" : "1"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.bias_buff_31_V_c_U", "Parent" : "1"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.row_c_U", "Parent" : "1"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.col_c_U", "Parent" : "1"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.out_V_offset_c_U", "Parent" : "1"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_in_loop_fu_354.ch_0_i_c1_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	compute_output {
		weight_V {Type I LastRead 17 FirstWrite -1}
		weight_V_offset {Type I LastRead 0 FirstWrite -1}
		out_V {Type O LastRead 18 FirstWrite 17}
		out_V_offset {Type I LastRead 0 FirstWrite -1}
		fm_in_buff_0_V {Type I LastRead 6 FirstWrite -1}
		fm_in_buff_1_V {Type I LastRead 8 FirstWrite -1}
		fm_in_buff_2_V {Type I LastRead 10 FirstWrite -1}
		bias_buff_0_V_read {Type I LastRead 0 FirstWrite -1}
		bias_buff_1_V_read {Type I LastRead 0 FirstWrite -1}
		bias_buff_2_V_read {Type I LastRead 0 FirstWrite -1}
		bias_buff_3_V_read {Type I LastRead 0 FirstWrite -1}
		bias_buff_4_V_read {Type I LastRead 0 FirstWrite -1}
		bias_buff_5_V_read {Type I LastRead 0 FirstWrite -1}
		bias_buff_6_V_read {Type I LastRead 0 FirstWrite -1}
		bias_buff_7_V_read {Type I LastRead 0 FirstWrite -1}
		bias_buff_8_V_read {Type I LastRead 0 FirstWrite -1}
		bias_buff_9_V_read {Type I LastRead 0 FirstWrite -1}
		bias_buff_10_V_read {Type I LastRead 0 FirstWrite -1}
		bias_buff_11_V_read {Type I LastRead 0 FirstWrite -1}
		bias_buff_12_V_read {Type I LastRead 0 FirstWrite -1}
		bias_buff_13_V_read {Type I LastRead 0 FirstWrite -1}
		bias_buff_14_V_read {Type I LastRead 0 FirstWrite -1}
		bias_buff_15_V_read {Type I LastRead 0 FirstWrite -1}
		bias_buff_16_V_read {Type I LastRead 0 FirstWrite -1}
		bias_buff_17_V_read {Type I LastRead 0 FirstWrite -1}
		bias_buff_18_V_read {Type I LastRead 0 FirstWrite -1}
		bias_buff_19_V_read {Type I LastRead 0 FirstWrite -1}
		bias_buff_20_V_read {Type I LastRead 0 FirstWrite -1}
		bias_buff_21_V_read {Type I LastRead 0 FirstWrite -1}
		bias_buff_22_V_read {Type I LastRead 0 FirstWrite -1}
		bias_buff_23_V_read {Type I LastRead 0 FirstWrite -1}
		bias_buff_24_V_read {Type I LastRead 0 FirstWrite -1}
		bias_buff_25_V_read {Type I LastRead 0 FirstWrite -1}
		bias_buff_26_V_read {Type I LastRead 0 FirstWrite -1}
		bias_buff_27_V_read {Type I LastRead 0 FirstWrite -1}
		bias_buff_28_V_read {Type I LastRead 0 FirstWrite -1}
		bias_buff_29_V_read {Type I LastRead 0 FirstWrite -1}
		bias_buff_30_V_read {Type I LastRead 0 FirstWrite -1}
		bias_buff_31_V_read {Type I LastRead 0 FirstWrite -1}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}
	dataflow_in_loop {
		weight_V {Type I LastRead 17 FirstWrite -1}
		weight_V_offset {Type I LastRead 0 FirstWrite -1}
		ch_0_i {Type I LastRead 0 FirstWrite -1}
		fm_in_buff_0_V {Type I LastRead 6 FirstWrite -1}
		fm_in_buff_1_V {Type I LastRead 8 FirstWrite -1}
		fm_in_buff_2_V {Type I LastRead 10 FirstWrite -1}
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
		out_V {Type O LastRead 18 FirstWrite 17}
		out_V_offset {Type I LastRead 0 FirstWrite -1}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}}
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
		out_V_offset_out {Type O LastRead -1 FirstWrite 0}}
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
		bias_buff_V_offset_out {Type O LastRead -1 FirstWrite 0}}
	store_output {
		out_V {Type O LastRead 18 FirstWrite 17}
		out_V_offset {Type I LastRead 0 FirstWrite -1}
		fm_out_buff_0_V {Type I LastRead 14 FirstWrite -1}
		fm_out_buff_1_V {Type I LastRead 14 FirstWrite -1}
		fm_out_buff_2_V {Type I LastRead 14 FirstWrite -1}
		fm_out_buff_3_V {Type I LastRead 14 FirstWrite -1}
		fm_out_buff_4_V {Type I LastRead 14 FirstWrite -1}
		fm_out_buff_5_V {Type I LastRead 14 FirstWrite -1}
		fm_out_buff_6_V {Type I LastRead 14 FirstWrite -1}
		fm_out_buff_7_V {Type I LastRead 14 FirstWrite -1}
		ch_0_i_c1 {Type I LastRead 0 FirstWrite -1}
		row_c {Type I LastRead 0 FirstWrite -1}
		col_c {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "29241", "Max" : "29241"}
	, {"Name" : "Interval", "Min" : "29241", "Max" : "29241"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	weight_V { m_axi {  { m_axi_weight_V_AWVALID VALID 1 1 }  { m_axi_weight_V_AWREADY READY 0 1 }  { m_axi_weight_V_AWADDR ADDR 1 32 }  { m_axi_weight_V_AWID ID 1 1 }  { m_axi_weight_V_AWLEN LEN 1 32 }  { m_axi_weight_V_AWSIZE SIZE 1 3 }  { m_axi_weight_V_AWBURST BURST 1 2 }  { m_axi_weight_V_AWLOCK LOCK 1 2 }  { m_axi_weight_V_AWCACHE CACHE 1 4 }  { m_axi_weight_V_AWPROT PROT 1 3 }  { m_axi_weight_V_AWQOS QOS 1 4 }  { m_axi_weight_V_AWREGION REGION 1 4 }  { m_axi_weight_V_AWUSER USER 1 1 }  { m_axi_weight_V_WVALID VALID 1 1 }  { m_axi_weight_V_WREADY READY 0 1 }  { m_axi_weight_V_WDATA DATA 1 16 }  { m_axi_weight_V_WSTRB STRB 1 2 }  { m_axi_weight_V_WLAST LAST 1 1 }  { m_axi_weight_V_WID ID 1 1 }  { m_axi_weight_V_WUSER USER 1 1 }  { m_axi_weight_V_ARVALID VALID 1 1 }  { m_axi_weight_V_ARREADY READY 0 1 }  { m_axi_weight_V_ARADDR ADDR 1 32 }  { m_axi_weight_V_ARID ID 1 1 }  { m_axi_weight_V_ARLEN LEN 1 32 }  { m_axi_weight_V_ARSIZE SIZE 1 3 }  { m_axi_weight_V_ARBURST BURST 1 2 }  { m_axi_weight_V_ARLOCK LOCK 1 2 }  { m_axi_weight_V_ARCACHE CACHE 1 4 }  { m_axi_weight_V_ARPROT PROT 1 3 }  { m_axi_weight_V_ARQOS QOS 1 4 }  { m_axi_weight_V_ARREGION REGION 1 4 }  { m_axi_weight_V_ARUSER USER 1 1 }  { m_axi_weight_V_RVALID VALID 0 1 }  { m_axi_weight_V_RREADY READY 1 1 }  { m_axi_weight_V_RDATA DATA 0 16 }  { m_axi_weight_V_RLAST LAST 0 1 }  { m_axi_weight_V_RID ID 0 1 }  { m_axi_weight_V_RUSER USER 0 1 }  { m_axi_weight_V_RRESP RESP 0 2 }  { m_axi_weight_V_BVALID VALID 0 1 }  { m_axi_weight_V_BREADY READY 1 1 }  { m_axi_weight_V_BRESP RESP 0 2 }  { m_axi_weight_V_BID ID 0 1 }  { m_axi_weight_V_BUSER USER 0 1 } } }
	weight_V_offset { ap_none {  { weight_V_offset in_data 0 31 } } }
	out_V { m_axi {  { m_axi_out_V_AWVALID VALID 1 1 }  { m_axi_out_V_AWREADY READY 0 1 }  { m_axi_out_V_AWADDR ADDR 1 32 }  { m_axi_out_V_AWID ID 1 1 }  { m_axi_out_V_AWLEN LEN 1 32 }  { m_axi_out_V_AWSIZE SIZE 1 3 }  { m_axi_out_V_AWBURST BURST 1 2 }  { m_axi_out_V_AWLOCK LOCK 1 2 }  { m_axi_out_V_AWCACHE CACHE 1 4 }  { m_axi_out_V_AWPROT PROT 1 3 }  { m_axi_out_V_AWQOS QOS 1 4 }  { m_axi_out_V_AWREGION REGION 1 4 }  { m_axi_out_V_AWUSER USER 1 1 }  { m_axi_out_V_WVALID VALID 1 1 }  { m_axi_out_V_WREADY READY 0 1 }  { m_axi_out_V_WDATA DATA 1 64 }  { m_axi_out_V_WSTRB STRB 1 8 }  { m_axi_out_V_WLAST LAST 1 1 }  { m_axi_out_V_WID ID 1 1 }  { m_axi_out_V_WUSER USER 1 1 }  { m_axi_out_V_ARVALID VALID 1 1 }  { m_axi_out_V_ARREADY READY 0 1 }  { m_axi_out_V_ARADDR ADDR 1 32 }  { m_axi_out_V_ARID ID 1 1 }  { m_axi_out_V_ARLEN LEN 1 32 }  { m_axi_out_V_ARSIZE SIZE 1 3 }  { m_axi_out_V_ARBURST BURST 1 2 }  { m_axi_out_V_ARLOCK LOCK 1 2 }  { m_axi_out_V_ARCACHE CACHE 1 4 }  { m_axi_out_V_ARPROT PROT 1 3 }  { m_axi_out_V_ARQOS QOS 1 4 }  { m_axi_out_V_ARREGION REGION 1 4 }  { m_axi_out_V_ARUSER USER 1 1 }  { m_axi_out_V_RVALID VALID 0 1 }  { m_axi_out_V_RREADY READY 1 1 }  { m_axi_out_V_RDATA DATA 0 64 }  { m_axi_out_V_RLAST LAST 0 1 }  { m_axi_out_V_RID ID 0 1 }  { m_axi_out_V_RUSER USER 0 1 }  { m_axi_out_V_RRESP RESP 0 2 }  { m_axi_out_V_BVALID VALID 0 1 }  { m_axi_out_V_BREADY READY 1 1 }  { m_axi_out_V_BRESP RESP 0 2 }  { m_axi_out_V_BID ID 0 1 }  { m_axi_out_V_BUSER USER 0 1 } } }
	out_V_offset { ap_none {  { out_V_offset in_data 0 29 } } }
	fm_in_buff_0_V { ap_memory {  { fm_in_buff_0_V_address0 mem_address 1 12 }  { fm_in_buff_0_V_ce0 mem_ce 1 1 }  { fm_in_buff_0_V_q0 mem_dout 0 16 } } }
	fm_in_buff_1_V { ap_memory {  { fm_in_buff_1_V_address0 mem_address 1 12 }  { fm_in_buff_1_V_ce0 mem_ce 1 1 }  { fm_in_buff_1_V_q0 mem_dout 0 16 } } }
	fm_in_buff_2_V { ap_memory {  { fm_in_buff_2_V_address0 mem_address 1 12 }  { fm_in_buff_2_V_ce0 mem_ce 1 1 }  { fm_in_buff_2_V_q0 mem_dout 0 16 } } }
	bias_buff_0_V_read { ap_none {  { bias_buff_0_V_read in_data 0 16 } } }
	bias_buff_1_V_read { ap_none {  { bias_buff_1_V_read in_data 0 16 } } }
	bias_buff_2_V_read { ap_none {  { bias_buff_2_V_read in_data 0 16 } } }
	bias_buff_3_V_read { ap_none {  { bias_buff_3_V_read in_data 0 16 } } }
	bias_buff_4_V_read { ap_none {  { bias_buff_4_V_read in_data 0 16 } } }
	bias_buff_5_V_read { ap_none {  { bias_buff_5_V_read in_data 0 16 } } }
	bias_buff_6_V_read { ap_none {  { bias_buff_6_V_read in_data 0 16 } } }
	bias_buff_7_V_read { ap_none {  { bias_buff_7_V_read in_data 0 16 } } }
	bias_buff_8_V_read { ap_none {  { bias_buff_8_V_read in_data 0 16 } } }
	bias_buff_9_V_read { ap_none {  { bias_buff_9_V_read in_data 0 16 } } }
	bias_buff_10_V_read { ap_none {  { bias_buff_10_V_read in_data 0 16 } } }
	bias_buff_11_V_read { ap_none {  { bias_buff_11_V_read in_data 0 16 } } }
	bias_buff_12_V_read { ap_none {  { bias_buff_12_V_read in_data 0 16 } } }
	bias_buff_13_V_read { ap_none {  { bias_buff_13_V_read in_data 0 16 } } }
	bias_buff_14_V_read { ap_none {  { bias_buff_14_V_read in_data 0 16 } } }
	bias_buff_15_V_read { ap_none {  { bias_buff_15_V_read in_data 0 16 } } }
	bias_buff_16_V_read { ap_none {  { bias_buff_16_V_read in_data 0 16 } } }
	bias_buff_17_V_read { ap_none {  { bias_buff_17_V_read in_data 0 16 } } }
	bias_buff_18_V_read { ap_none {  { bias_buff_18_V_read in_data 0 16 } } }
	bias_buff_19_V_read { ap_none {  { bias_buff_19_V_read in_data 0 16 } } }
	bias_buff_20_V_read { ap_none {  { bias_buff_20_V_read in_data 0 16 } } }
	bias_buff_21_V_read { ap_none {  { bias_buff_21_V_read in_data 0 16 } } }
	bias_buff_22_V_read { ap_none {  { bias_buff_22_V_read in_data 0 16 } } }
	bias_buff_23_V_read { ap_none {  { bias_buff_23_V_read in_data 0 16 } } }
	bias_buff_24_V_read { ap_none {  { bias_buff_24_V_read in_data 0 16 } } }
	bias_buff_25_V_read { ap_none {  { bias_buff_25_V_read in_data 0 16 } } }
	bias_buff_26_V_read { ap_none {  { bias_buff_26_V_read in_data 0 16 } } }
	bias_buff_27_V_read { ap_none {  { bias_buff_27_V_read in_data 0 16 } } }
	bias_buff_28_V_read { ap_none {  { bias_buff_28_V_read in_data 0 16 } } }
	bias_buff_29_V_read { ap_none {  { bias_buff_29_V_read in_data 0 16 } } }
	bias_buff_30_V_read { ap_none {  { bias_buff_30_V_read in_data 0 16 } } }
	bias_buff_31_V_read { ap_none {  { bias_buff_31_V_read in_data 0 16 } } }
	row { ap_none {  { row in_data 0 32 } } }
	col { ap_none {  { col in_data 0 32 } } }
}
