set moduleName conv
set isTopModule 1
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
set C_modelName {conv}
set C_modelType { void 0 }
set C_modelArgList {
	{ IN1 int 16 regular {axi_master 0}  }
	{ IN2 int 16 regular {axi_master 0}  }
	{ IN3 int 16 regular {axi_master 0}  }
	{ W int 16 regular {axi_master 0}  }
	{ OUT_r int 64 regular {axi_master 1}  }
	{ in1_V int 32 regular {axi_slave 0}  }
	{ in2_V int 32 regular {axi_slave 0}  }
	{ in3_V int 32 regular {axi_slave 0}  }
	{ weight_V int 32 regular {axi_slave 0}  }
	{ bias_V int 32 regular {axi_slave 0}  }
	{ out_V int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "IN1", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "in1.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "in1_V","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 151039,"step" : 1}]}]}]} , 
 	{ "Name" : "IN2", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "in2.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "in2_V","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 151039,"step" : 1}]}]}]} , 
 	{ "Name" : "IN3", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "in3.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "in3_V","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 151039,"step" : 1}]}]}]} , 
 	{ "Name" : "W", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "weight.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "weight_V","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 863,"step" : 1}]},{"cName": "bias.V","cData": "int16","bit_use": { "low": 0,"up": 15},"offset": { "type": "dynamic","port_name": "bias_V","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "OUT_r", "interface" : "axi_master", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "out.V","cData": "int64","bit_use": { "low": 0,"up": 63},"offset": { "type": "dynamic","port_name": "out_V","bundle": "AXILiteS"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 100351,"step" : 1}]}]}]} , 
 	{ "Name" : "in1_V", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "in2_V", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "in3_V", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "weight_V", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "bias_V", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "out_V", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} ]}
# RTL Port declarations: 
set portNum 245
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_IN1_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_IN1_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_IN1_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_IN1_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_IN1_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_IN1_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_IN1_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_IN1_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_IN1_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_IN1_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_IN1_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_IN1_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_IN1_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_IN1_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_IN1_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_IN1_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_IN1_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_IN1_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_IN1_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_IN1_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_IN1_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_IN1_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_IN1_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_IN1_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_IN1_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_IN1_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_IN1_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_IN1_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_IN1_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_IN1_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_IN1_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_IN1_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_IN1_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_IN1_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_IN1_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_IN1_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_IN1_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_IN1_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_IN1_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_IN1_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_IN1_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_IN1_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_IN1_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_IN1_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_IN1_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_IN2_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_IN2_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_IN2_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_IN2_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_IN2_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_IN2_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_IN2_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_IN2_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_IN2_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_IN2_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_IN2_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_IN2_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_IN2_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_IN2_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_IN2_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_IN2_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_IN2_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_IN2_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_IN2_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_IN2_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_IN2_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_IN2_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_IN2_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_IN2_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_IN2_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_IN2_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_IN2_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_IN2_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_IN2_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_IN2_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_IN2_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_IN2_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_IN2_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_IN2_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_IN2_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_IN2_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_IN2_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_IN2_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_IN2_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_IN2_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_IN2_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_IN2_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_IN2_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_IN2_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_IN2_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_IN3_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_IN3_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_IN3_AWADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_IN3_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_IN3_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_IN3_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_IN3_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_IN3_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_IN3_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_IN3_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_IN3_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_IN3_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_IN3_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_IN3_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_IN3_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_IN3_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_IN3_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_IN3_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_IN3_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_IN3_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_IN3_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_IN3_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_IN3_ARADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_IN3_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_IN3_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_IN3_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_IN3_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_IN3_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_IN3_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_IN3_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_IN3_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_IN3_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_IN3_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_IN3_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_IN3_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_IN3_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_IN3_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_IN3_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_IN3_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_IN3_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_IN3_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_IN3_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_IN3_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_IN3_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_IN3_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_W_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_W_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_W_AWADDR sc_out sc_lv 32 signal 3 } 
	{ m_axi_W_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_W_AWLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_W_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_W_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_W_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_W_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_W_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_W_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_W_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_W_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_W_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_W_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_W_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_W_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_W_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_W_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_W_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_W_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_W_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_W_ARADDR sc_out sc_lv 32 signal 3 } 
	{ m_axi_W_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_W_ARLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_W_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_W_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_W_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_W_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_W_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_W_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_W_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_W_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_W_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_W_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_W_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_W_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_W_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_W_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_W_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_W_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_W_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_W_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_W_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_W_BUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_OUT_r_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_OUT_r_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_OUT_r_AWADDR sc_out sc_lv 32 signal 4 } 
	{ m_axi_OUT_r_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_OUT_r_AWLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_OUT_r_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_OUT_r_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_OUT_r_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_OUT_r_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_OUT_r_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_OUT_r_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_OUT_r_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_OUT_r_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_OUT_r_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_OUT_r_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_OUT_r_WDATA sc_out sc_lv 64 signal 4 } 
	{ m_axi_OUT_r_WSTRB sc_out sc_lv 8 signal 4 } 
	{ m_axi_OUT_r_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_OUT_r_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_OUT_r_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_OUT_r_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_OUT_r_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_OUT_r_ARADDR sc_out sc_lv 32 signal 4 } 
	{ m_axi_OUT_r_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_OUT_r_ARLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_OUT_r_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_OUT_r_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_OUT_r_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_OUT_r_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_OUT_r_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_OUT_r_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_OUT_r_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_OUT_r_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_OUT_r_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_OUT_r_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_OUT_r_RDATA sc_in sc_lv 64 signal 4 } 
	{ m_axi_OUT_r_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_OUT_r_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_OUT_r_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_OUT_r_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_OUT_r_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_OUT_r_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_OUT_r_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_OUT_r_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_OUT_r_BUSER sc_in sc_lv 1 signal 4 } 
	{ s_axi_CTRL_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_CTRL_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_CTRL_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CTRL", "role": "AWADDR" },"address":[{"name":"conv","role":"start","value":"0","valid_bit":"0"},{"name":"conv","role":"continue","value":"0","valid_bit":"4"},{"name":"conv","role":"auto_start","value":"0","valid_bit":"7"},{"name":"in1_V","role":"data","value":"16"},{"name":"in2_V","role":"data","value":"24"},{"name":"in3_V","role":"data","value":"32"},{"name":"weight_V","role":"data","value":"40"},{"name":"bias_V","role":"data","value":"48"},{"name":"out_V","role":"data","value":"56"}] },
	{ "name": "s_axi_CTRL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CTRL", "role": "ARADDR" },"address":[{"name":"conv","role":"start","value":"0","valid_bit":"0"},{"name":"conv","role":"done","value":"0","valid_bit":"1"},{"name":"conv","role":"idle","value":"0","valid_bit":"2"},{"name":"conv","role":"ready","value":"0","valid_bit":"3"},{"name":"conv","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CTRL_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_IN1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_IN1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_IN1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "IN1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_IN1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN1", "role": "AWID" }} , 
 	{ "name": "m_axi_IN1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "IN1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_IN1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "IN1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_IN1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IN1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_IN1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IN1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_IN1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_IN1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "IN1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_IN1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_IN1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_IN1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_IN1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN1", "role": "WVALID" }} , 
 	{ "name": "m_axi_IN1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN1", "role": "WREADY" }} , 
 	{ "name": "m_axi_IN1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "IN1", "role": "WDATA" }} , 
 	{ "name": "m_axi_IN1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_IN1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN1", "role": "WLAST" }} , 
 	{ "name": "m_axi_IN1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN1", "role": "WID" }} , 
 	{ "name": "m_axi_IN1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN1", "role": "WUSER" }} , 
 	{ "name": "m_axi_IN1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_IN1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_IN1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "IN1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_IN1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN1", "role": "ARID" }} , 
 	{ "name": "m_axi_IN1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "IN1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_IN1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "IN1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_IN1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IN1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_IN1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IN1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_IN1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_IN1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "IN1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_IN1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_IN1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_IN1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_IN1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN1", "role": "RVALID" }} , 
 	{ "name": "m_axi_IN1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN1", "role": "RREADY" }} , 
 	{ "name": "m_axi_IN1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "IN1", "role": "RDATA" }} , 
 	{ "name": "m_axi_IN1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN1", "role": "RLAST" }} , 
 	{ "name": "m_axi_IN1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN1", "role": "RID" }} , 
 	{ "name": "m_axi_IN1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN1", "role": "RUSER" }} , 
 	{ "name": "m_axi_IN1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IN1", "role": "RRESP" }} , 
 	{ "name": "m_axi_IN1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN1", "role": "BVALID" }} , 
 	{ "name": "m_axi_IN1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN1", "role": "BREADY" }} , 
 	{ "name": "m_axi_IN1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IN1", "role": "BRESP" }} , 
 	{ "name": "m_axi_IN1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN1", "role": "BID" }} , 
 	{ "name": "m_axi_IN1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN1", "role": "BUSER" }} , 
 	{ "name": "m_axi_IN2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_IN2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_IN2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "IN2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_IN2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN2", "role": "AWID" }} , 
 	{ "name": "m_axi_IN2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "IN2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_IN2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "IN2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_IN2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IN2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_IN2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IN2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_IN2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_IN2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "IN2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_IN2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_IN2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_IN2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_IN2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN2", "role": "WVALID" }} , 
 	{ "name": "m_axi_IN2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN2", "role": "WREADY" }} , 
 	{ "name": "m_axi_IN2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "IN2", "role": "WDATA" }} , 
 	{ "name": "m_axi_IN2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_IN2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN2", "role": "WLAST" }} , 
 	{ "name": "m_axi_IN2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN2", "role": "WID" }} , 
 	{ "name": "m_axi_IN2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN2", "role": "WUSER" }} , 
 	{ "name": "m_axi_IN2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_IN2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_IN2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "IN2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_IN2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN2", "role": "ARID" }} , 
 	{ "name": "m_axi_IN2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "IN2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_IN2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "IN2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_IN2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IN2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_IN2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IN2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_IN2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_IN2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "IN2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_IN2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_IN2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_IN2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_IN2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN2", "role": "RVALID" }} , 
 	{ "name": "m_axi_IN2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN2", "role": "RREADY" }} , 
 	{ "name": "m_axi_IN2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "IN2", "role": "RDATA" }} , 
 	{ "name": "m_axi_IN2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN2", "role": "RLAST" }} , 
 	{ "name": "m_axi_IN2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN2", "role": "RID" }} , 
 	{ "name": "m_axi_IN2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN2", "role": "RUSER" }} , 
 	{ "name": "m_axi_IN2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IN2", "role": "RRESP" }} , 
 	{ "name": "m_axi_IN2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN2", "role": "BVALID" }} , 
 	{ "name": "m_axi_IN2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN2", "role": "BREADY" }} , 
 	{ "name": "m_axi_IN2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IN2", "role": "BRESP" }} , 
 	{ "name": "m_axi_IN2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN2", "role": "BID" }} , 
 	{ "name": "m_axi_IN2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN2", "role": "BUSER" }} , 
 	{ "name": "m_axi_IN3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_IN3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_IN3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "IN3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_IN3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN3", "role": "AWID" }} , 
 	{ "name": "m_axi_IN3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "IN3", "role": "AWLEN" }} , 
 	{ "name": "m_axi_IN3_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "IN3", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_IN3_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IN3", "role": "AWBURST" }} , 
 	{ "name": "m_axi_IN3_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IN3", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_IN3_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN3", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_IN3_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "IN3", "role": "AWPROT" }} , 
 	{ "name": "m_axi_IN3_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN3", "role": "AWQOS" }} , 
 	{ "name": "m_axi_IN3_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN3", "role": "AWREGION" }} , 
 	{ "name": "m_axi_IN3_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN3", "role": "AWUSER" }} , 
 	{ "name": "m_axi_IN3_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN3", "role": "WVALID" }} , 
 	{ "name": "m_axi_IN3_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN3", "role": "WREADY" }} , 
 	{ "name": "m_axi_IN3_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "IN3", "role": "WDATA" }} , 
 	{ "name": "m_axi_IN3_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN3", "role": "WSTRB" }} , 
 	{ "name": "m_axi_IN3_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN3", "role": "WLAST" }} , 
 	{ "name": "m_axi_IN3_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN3", "role": "WID" }} , 
 	{ "name": "m_axi_IN3_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN3", "role": "WUSER" }} , 
 	{ "name": "m_axi_IN3_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN3", "role": "ARVALID" }} , 
 	{ "name": "m_axi_IN3_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN3", "role": "ARREADY" }} , 
 	{ "name": "m_axi_IN3_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "IN3", "role": "ARADDR" }} , 
 	{ "name": "m_axi_IN3_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN3", "role": "ARID" }} , 
 	{ "name": "m_axi_IN3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "IN3", "role": "ARLEN" }} , 
 	{ "name": "m_axi_IN3_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "IN3", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_IN3_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IN3", "role": "ARBURST" }} , 
 	{ "name": "m_axi_IN3_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IN3", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_IN3_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN3", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_IN3_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "IN3", "role": "ARPROT" }} , 
 	{ "name": "m_axi_IN3_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN3", "role": "ARQOS" }} , 
 	{ "name": "m_axi_IN3_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "IN3", "role": "ARREGION" }} , 
 	{ "name": "m_axi_IN3_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN3", "role": "ARUSER" }} , 
 	{ "name": "m_axi_IN3_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN3", "role": "RVALID" }} , 
 	{ "name": "m_axi_IN3_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN3", "role": "RREADY" }} , 
 	{ "name": "m_axi_IN3_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "IN3", "role": "RDATA" }} , 
 	{ "name": "m_axi_IN3_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN3", "role": "RLAST" }} , 
 	{ "name": "m_axi_IN3_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN3", "role": "RID" }} , 
 	{ "name": "m_axi_IN3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN3", "role": "RUSER" }} , 
 	{ "name": "m_axi_IN3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IN3", "role": "RRESP" }} , 
 	{ "name": "m_axi_IN3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN3", "role": "BVALID" }} , 
 	{ "name": "m_axi_IN3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN3", "role": "BREADY" }} , 
 	{ "name": "m_axi_IN3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IN3", "role": "BRESP" }} , 
 	{ "name": "m_axi_IN3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN3", "role": "BID" }} , 
 	{ "name": "m_axi_IN3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN3", "role": "BUSER" }} , 
 	{ "name": "m_axi_W_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "AWVALID" }} , 
 	{ "name": "m_axi_W_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "AWREADY" }} , 
 	{ "name": "m_axi_W_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W", "role": "AWADDR" }} , 
 	{ "name": "m_axi_W_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "AWID" }} , 
 	{ "name": "m_axi_W_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "W", "role": "AWLEN" }} , 
 	{ "name": "m_axi_W_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "W", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_W_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W", "role": "AWBURST" }} , 
 	{ "name": "m_axi_W_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_W_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_W_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "W", "role": "AWPROT" }} , 
 	{ "name": "m_axi_W_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W", "role": "AWQOS" }} , 
 	{ "name": "m_axi_W_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W", "role": "AWREGION" }} , 
 	{ "name": "m_axi_W_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "AWUSER" }} , 
 	{ "name": "m_axi_W_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "WVALID" }} , 
 	{ "name": "m_axi_W_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "WREADY" }} , 
 	{ "name": "m_axi_W_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W", "role": "WDATA" }} , 
 	{ "name": "m_axi_W_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W", "role": "WSTRB" }} , 
 	{ "name": "m_axi_W_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "WLAST" }} , 
 	{ "name": "m_axi_W_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "WID" }} , 
 	{ "name": "m_axi_W_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "WUSER" }} , 
 	{ "name": "m_axi_W_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "ARVALID" }} , 
 	{ "name": "m_axi_W_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "ARREADY" }} , 
 	{ "name": "m_axi_W_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W", "role": "ARADDR" }} , 
 	{ "name": "m_axi_W_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "ARID" }} , 
 	{ "name": "m_axi_W_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "W", "role": "ARLEN" }} , 
 	{ "name": "m_axi_W_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "W", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_W_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W", "role": "ARBURST" }} , 
 	{ "name": "m_axi_W_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_W_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_W_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "W", "role": "ARPROT" }} , 
 	{ "name": "m_axi_W_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W", "role": "ARQOS" }} , 
 	{ "name": "m_axi_W_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W", "role": "ARREGION" }} , 
 	{ "name": "m_axi_W_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "ARUSER" }} , 
 	{ "name": "m_axi_W_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "RVALID" }} , 
 	{ "name": "m_axi_W_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "RREADY" }} , 
 	{ "name": "m_axi_W_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W", "role": "RDATA" }} , 
 	{ "name": "m_axi_W_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "RLAST" }} , 
 	{ "name": "m_axi_W_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "RID" }} , 
 	{ "name": "m_axi_W_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "RUSER" }} , 
 	{ "name": "m_axi_W_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W", "role": "RRESP" }} , 
 	{ "name": "m_axi_W_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "BVALID" }} , 
 	{ "name": "m_axi_W_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "BREADY" }} , 
 	{ "name": "m_axi_W_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "W", "role": "BRESP" }} , 
 	{ "name": "m_axi_W_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "BID" }} , 
 	{ "name": "m_axi_W_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "W", "role": "BUSER" }} , 
 	{ "name": "m_axi_OUT_r_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWVALID" }} , 
 	{ "name": "m_axi_OUT_r_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWREADY" }} , 
 	{ "name": "m_axi_OUT_r_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWADDR" }} , 
 	{ "name": "m_axi_OUT_r_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWID" }} , 
 	{ "name": "m_axi_OUT_r_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWLEN" }} , 
 	{ "name": "m_axi_OUT_r_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_OUT_r_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWBURST" }} , 
 	{ "name": "m_axi_OUT_r_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_OUT_r_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_OUT_r_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWPROT" }} , 
 	{ "name": "m_axi_OUT_r_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWQOS" }} , 
 	{ "name": "m_axi_OUT_r_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWREGION" }} , 
 	{ "name": "m_axi_OUT_r_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "AWUSER" }} , 
 	{ "name": "m_axi_OUT_r_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "WVALID" }} , 
 	{ "name": "m_axi_OUT_r_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "WREADY" }} , 
 	{ "name": "m_axi_OUT_r_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "OUT_r", "role": "WDATA" }} , 
 	{ "name": "m_axi_OUT_r_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_r", "role": "WSTRB" }} , 
 	{ "name": "m_axi_OUT_r_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "WLAST" }} , 
 	{ "name": "m_axi_OUT_r_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "WID" }} , 
 	{ "name": "m_axi_OUT_r_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "WUSER" }} , 
 	{ "name": "m_axi_OUT_r_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARVALID" }} , 
 	{ "name": "m_axi_OUT_r_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARREADY" }} , 
 	{ "name": "m_axi_OUT_r_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARADDR" }} , 
 	{ "name": "m_axi_OUT_r_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARID" }} , 
 	{ "name": "m_axi_OUT_r_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARLEN" }} , 
 	{ "name": "m_axi_OUT_r_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_OUT_r_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARBURST" }} , 
 	{ "name": "m_axi_OUT_r_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_OUT_r_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_OUT_r_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARPROT" }} , 
 	{ "name": "m_axi_OUT_r_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARQOS" }} , 
 	{ "name": "m_axi_OUT_r_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARREGION" }} , 
 	{ "name": "m_axi_OUT_r_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "ARUSER" }} , 
 	{ "name": "m_axi_OUT_r_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "RVALID" }} , 
 	{ "name": "m_axi_OUT_r_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "RREADY" }} , 
 	{ "name": "m_axi_OUT_r_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "OUT_r", "role": "RDATA" }} , 
 	{ "name": "m_axi_OUT_r_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "RLAST" }} , 
 	{ "name": "m_axi_OUT_r_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "RID" }} , 
 	{ "name": "m_axi_OUT_r_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "RUSER" }} , 
 	{ "name": "m_axi_OUT_r_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUT_r", "role": "RRESP" }} , 
 	{ "name": "m_axi_OUT_r_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "BVALID" }} , 
 	{ "name": "m_axi_OUT_r_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "BREADY" }} , 
 	{ "name": "m_axi_OUT_r_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "OUT_r", "role": "BRESP" }} , 
 	{ "name": "m_axi_OUT_r_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "BID" }} , 
 	{ "name": "m_axi_OUT_r_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_r", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "126"],
		"CDFG" : "conv",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_compute_output_fu_469"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_compute_output_fu_469"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_compute_output_fu_469"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_compute_output_fu_469"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_input_fu_518"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_input_fu_518"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_load_input_fu_518"}],
		"Port" : [
			{"Name" : "IN1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_load_input_fu_518", "Port" : "in1_V"}]},
			{"Name" : "IN2", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_load_input_fu_518", "Port" : "in2_V"}]},
			{"Name" : "IN3", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_load_input_fu_518", "Port" : "in3_V"}]},
			{"Name" : "W", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "W_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "W_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_compute_output_fu_469", "Port" : "weight_V"}]},
			{"Name" : "OUT_r", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_compute_output_fu_469", "Port" : "out_V"}]},
			{"Name" : "in1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in3_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_CTRL_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_IN1_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_IN2_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_IN3_m_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_W_m_axi_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_OUT_r_m_axi_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fm_in_buff1_0_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fm_in_buff1_1_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fm_in_buff1_2_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fm_in_buff2_0_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fm_in_buff2_1_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fm_in_buff2_2_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469", "Parent" : "0", "Child" : ["14"],
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
					{"ID" : "14", "SubInstance" : "grp_dataflow_in_loop_fu_354", "Port" : "weight_V"}]},
			{"Name" : "weight_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_V", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_dataflow_in_loop_fu_354", "Port" : "out_V"}]},
			{"Name" : "out_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "fm_in_buff_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_dataflow_in_loop_fu_354", "Port" : "fm_in_buff_0_V"}]},
			{"Name" : "fm_in_buff_1_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_dataflow_in_loop_fu_354", "Port" : "fm_in_buff_1_V"}]},
			{"Name" : "fm_in_buff_2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_dataflow_in_loop_fu_354", "Port" : "fm_in_buff_2_V"}]},
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
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354", "Parent" : "13", "Child" : ["15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "50", "84", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125"],
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
			{"ID" : "47", "Name" : "load_weight5427_U0", "ReadyCount" : "load_weight5427_U0_ap_ready_count"},
			{"ID" : "50", "Name" : "compute5_U0", "ReadyCount" : "compute5_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "84", "Name" : "store_output_U0"}],
		"Port" : [
			{"Name" : "weight_V", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "load_weight5427_U0", "Port" : "weight_V"}]},
			{"Name" : "weight_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "ch_0_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "fm_in_buff_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "compute5_U0", "Port" : "fm_in_buff_0_V"}]},
			{"Name" : "fm_in_buff_1_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "compute5_U0", "Port" : "fm_in_buff_1_V"}]},
			{"Name" : "fm_in_buff_2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "compute5_U0", "Port" : "fm_in_buff_2_V"}]},
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
					{"ID" : "84", "SubInstance" : "store_output_U0", "Port" : "out_V"}]},
			{"Name" : "out_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.wt_buff_0_0_V_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.wt_buff_0_1_V_U", "Parent" : "14"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.wt_buff_0_2_V_U", "Parent" : "14"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.wt_buff_1_0_V_U", "Parent" : "14"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.wt_buff_1_1_V_U", "Parent" : "14"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.wt_buff_1_2_V_U", "Parent" : "14"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.wt_buff_2_0_V_U", "Parent" : "14"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.wt_buff_2_1_V_U", "Parent" : "14"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.wt_buff_2_2_V_U", "Parent" : "14"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.wt_buff_3_0_V_U", "Parent" : "14"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.wt_buff_3_1_V_U", "Parent" : "14"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.wt_buff_3_2_V_U", "Parent" : "14"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.wt_buff_4_0_V_U", "Parent" : "14"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.wt_buff_4_1_V_U", "Parent" : "14"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.wt_buff_4_2_V_U", "Parent" : "14"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.wt_buff_5_0_V_U", "Parent" : "14"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.wt_buff_5_1_V_U", "Parent" : "14"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.wt_buff_5_2_V_U", "Parent" : "14"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.wt_buff_6_0_V_U", "Parent" : "14"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.wt_buff_6_1_V_U", "Parent" : "14"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.wt_buff_6_2_V_U", "Parent" : "14"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.wt_buff_7_0_V_U", "Parent" : "14"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.wt_buff_7_1_V_U", "Parent" : "14"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.wt_buff_7_2_V_U", "Parent" : "14"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.fm_out_buff_0_V_U", "Parent" : "14"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.fm_out_buff_1_V_U", "Parent" : "14"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.fm_out_buff_2_V_U", "Parent" : "14"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.fm_out_buff_3_V_U", "Parent" : "14"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.fm_out_buff_4_V_U", "Parent" : "14"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.fm_out_buff_5_V_U", "Parent" : "14"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.fm_out_buff_6_V_U", "Parent" : "14"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.fm_out_buff_7_V_U", "Parent" : "14"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.load_weight5427_U0", "Parent" : "14", "Child" : ["48", "49"],
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
			{"Name" : "wt_buff_0_0_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "15"},
			{"Name" : "wt_buff_0_1_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "16"},
			{"Name" : "wt_buff_0_2_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "17"},
			{"Name" : "wt_buff_1_0_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "18"},
			{"Name" : "wt_buff_1_1_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "19"},
			{"Name" : "wt_buff_1_2_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "20"},
			{"Name" : "wt_buff_2_0_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "21"},
			{"Name" : "wt_buff_2_1_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "22"},
			{"Name" : "wt_buff_2_2_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "23"},
			{"Name" : "wt_buff_3_0_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "24"},
			{"Name" : "wt_buff_3_1_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "25"},
			{"Name" : "wt_buff_3_2_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "26"},
			{"Name" : "wt_buff_4_0_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "27"},
			{"Name" : "wt_buff_4_1_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "28"},
			{"Name" : "wt_buff_4_2_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "29"},
			{"Name" : "wt_buff_5_0_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "30"},
			{"Name" : "wt_buff_5_1_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "31"},
			{"Name" : "wt_buff_5_2_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "32"},
			{"Name" : "wt_buff_6_0_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "33"},
			{"Name" : "wt_buff_6_1_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "34"},
			{"Name" : "wt_buff_6_2_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "35"},
			{"Name" : "wt_buff_7_0_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "36"},
			{"Name" : "wt_buff_7_1_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "37"},
			{"Name" : "wt_buff_7_2_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "38"},
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
			{"Name" : "ch_0_i_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "89",
				"BlockSignal" : [
					{"Name" : "ch_0_i_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_0_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "90",
				"BlockSignal" : [
					{"Name" : "bias_buff_0_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_1_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "91",
				"BlockSignal" : [
					{"Name" : "bias_buff_1_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_2_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "92",
				"BlockSignal" : [
					{"Name" : "bias_buff_2_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_3_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "93",
				"BlockSignal" : [
					{"Name" : "bias_buff_3_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_4_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "94",
				"BlockSignal" : [
					{"Name" : "bias_buff_4_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_5_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "95",
				"BlockSignal" : [
					{"Name" : "bias_buff_5_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_6_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "96",
				"BlockSignal" : [
					{"Name" : "bias_buff_6_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_7_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "97",
				"BlockSignal" : [
					{"Name" : "bias_buff_7_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_8_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "98",
				"BlockSignal" : [
					{"Name" : "bias_buff_8_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_9_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "99",
				"BlockSignal" : [
					{"Name" : "bias_buff_9_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_10_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "100",
				"BlockSignal" : [
					{"Name" : "bias_buff_10_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_11_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "101",
				"BlockSignal" : [
					{"Name" : "bias_buff_11_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_12_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "102",
				"BlockSignal" : [
					{"Name" : "bias_buff_12_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_13_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "103",
				"BlockSignal" : [
					{"Name" : "bias_buff_13_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_14_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "104",
				"BlockSignal" : [
					{"Name" : "bias_buff_14_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_15_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "105",
				"BlockSignal" : [
					{"Name" : "bias_buff_15_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_16_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "106",
				"BlockSignal" : [
					{"Name" : "bias_buff_16_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_17_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "107",
				"BlockSignal" : [
					{"Name" : "bias_buff_17_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_18_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "108",
				"BlockSignal" : [
					{"Name" : "bias_buff_18_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_19_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "109",
				"BlockSignal" : [
					{"Name" : "bias_buff_19_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_20_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "110",
				"BlockSignal" : [
					{"Name" : "bias_buff_20_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_21_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "111",
				"BlockSignal" : [
					{"Name" : "bias_buff_21_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_22_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "112",
				"BlockSignal" : [
					{"Name" : "bias_buff_22_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_23_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "113",
				"BlockSignal" : [
					{"Name" : "bias_buff_23_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_24_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "114",
				"BlockSignal" : [
					{"Name" : "bias_buff_24_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_25_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "115",
				"BlockSignal" : [
					{"Name" : "bias_buff_25_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_26_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "116",
				"BlockSignal" : [
					{"Name" : "bias_buff_26_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_27_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "117",
				"BlockSignal" : [
					{"Name" : "bias_buff_27_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_28_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "118",
				"BlockSignal" : [
					{"Name" : "bias_buff_28_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_29_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "119",
				"BlockSignal" : [
					{"Name" : "bias_buff_29_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_30_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "120",
				"BlockSignal" : [
					{"Name" : "bias_buff_30_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_31_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "50", "DependentChan" : "121",
				"BlockSignal" : [
					{"Name" : "bias_buff_31_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "row_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "84", "DependentChan" : "122",
				"BlockSignal" : [
					{"Name" : "row_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "col_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "84", "DependentChan" : "123",
				"BlockSignal" : [
					{"Name" : "col_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_V_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "84", "DependentChan" : "124",
				"BlockSignal" : [
					{"Name" : "out_V_offset_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.load_weight5427_U0.conv_urem_5ns_5nscud_U14", "Parent" : "47"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.load_weight5427_U0.conv_mac_muladd_6dEe_U15", "Parent" : "47"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.compute5_U0", "Parent" : "14", "Child" : ["51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83"],
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
			{"Name" : "wt_buff_0_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "15"},
			{"Name" : "wt_buff_0_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "16"},
			{"Name" : "wt_buff_0_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "17"},
			{"Name" : "wt_buff_1_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "18"},
			{"Name" : "wt_buff_1_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "19"},
			{"Name" : "wt_buff_1_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "20"},
			{"Name" : "wt_buff_2_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "21"},
			{"Name" : "wt_buff_2_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "22"},
			{"Name" : "wt_buff_2_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "23"},
			{"Name" : "wt_buff_3_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "24"},
			{"Name" : "wt_buff_3_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "25"},
			{"Name" : "wt_buff_3_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "26"},
			{"Name" : "wt_buff_4_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "27"},
			{"Name" : "wt_buff_4_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "28"},
			{"Name" : "wt_buff_4_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "29"},
			{"Name" : "wt_buff_5_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "30"},
			{"Name" : "wt_buff_5_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "31"},
			{"Name" : "wt_buff_5_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "32"},
			{"Name" : "wt_buff_6_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "33"},
			{"Name" : "wt_buff_6_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "34"},
			{"Name" : "wt_buff_6_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "35"},
			{"Name" : "wt_buff_7_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "36"},
			{"Name" : "wt_buff_7_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "37"},
			{"Name" : "wt_buff_7_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "38"},
			{"Name" : "bias_buff_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "90",
				"BlockSignal" : [
					{"Name" : "bias_buff_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "91",
				"BlockSignal" : [
					{"Name" : "bias_buff_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "92",
				"BlockSignal" : [
					{"Name" : "bias_buff_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "93",
				"BlockSignal" : [
					{"Name" : "bias_buff_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_4_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "94",
				"BlockSignal" : [
					{"Name" : "bias_buff_4_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_5_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "95",
				"BlockSignal" : [
					{"Name" : "bias_buff_5_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_6_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "96",
				"BlockSignal" : [
					{"Name" : "bias_buff_6_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_7_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "97",
				"BlockSignal" : [
					{"Name" : "bias_buff_7_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_8_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "98",
				"BlockSignal" : [
					{"Name" : "bias_buff_8_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_9_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "99",
				"BlockSignal" : [
					{"Name" : "bias_buff_9_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_10_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "100",
				"BlockSignal" : [
					{"Name" : "bias_buff_10_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_11_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "101",
				"BlockSignal" : [
					{"Name" : "bias_buff_11_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_12_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "102",
				"BlockSignal" : [
					{"Name" : "bias_buff_12_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_13_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "103",
				"BlockSignal" : [
					{"Name" : "bias_buff_13_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_14_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "104",
				"BlockSignal" : [
					{"Name" : "bias_buff_14_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_15_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "105",
				"BlockSignal" : [
					{"Name" : "bias_buff_15_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_16_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "106",
				"BlockSignal" : [
					{"Name" : "bias_buff_16_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_17_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "107",
				"BlockSignal" : [
					{"Name" : "bias_buff_17_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_18_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "108",
				"BlockSignal" : [
					{"Name" : "bias_buff_18_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_19_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "109",
				"BlockSignal" : [
					{"Name" : "bias_buff_19_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_20_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "110",
				"BlockSignal" : [
					{"Name" : "bias_buff_20_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_21_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "111",
				"BlockSignal" : [
					{"Name" : "bias_buff_21_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_22_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "112",
				"BlockSignal" : [
					{"Name" : "bias_buff_22_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_23_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "113",
				"BlockSignal" : [
					{"Name" : "bias_buff_23_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_24_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "114",
				"BlockSignal" : [
					{"Name" : "bias_buff_24_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_25_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "115",
				"BlockSignal" : [
					{"Name" : "bias_buff_25_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_26_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "116",
				"BlockSignal" : [
					{"Name" : "bias_buff_26_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_27_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "117",
				"BlockSignal" : [
					{"Name" : "bias_buff_27_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_28_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "118",
				"BlockSignal" : [
					{"Name" : "bias_buff_28_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_29_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "119",
				"BlockSignal" : [
					{"Name" : "bias_buff_29_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_30_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "120",
				"BlockSignal" : [
					{"Name" : "bias_buff_30_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_31_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "121",
				"BlockSignal" : [
					{"Name" : "bias_buff_31_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_V_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "89",
				"BlockSignal" : [
					{"Name" : "bias_buff_V_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fm_out_buff_0_V", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "84", "DependentChan" : "39"},
			{"Name" : "fm_out_buff_1_V", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "84", "DependentChan" : "40"},
			{"Name" : "fm_out_buff_2_V", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "84", "DependentChan" : "41"},
			{"Name" : "fm_out_buff_3_V", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "84", "DependentChan" : "42"},
			{"Name" : "fm_out_buff_4_V", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "84", "DependentChan" : "43"},
			{"Name" : "fm_out_buff_5_V", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "84", "DependentChan" : "44"},
			{"Name" : "fm_out_buff_6_V", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "84", "DependentChan" : "45"},
			{"Name" : "fm_out_buff_7_V", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "84", "DependentChan" : "46"},
			{"Name" : "bias_buff_V_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "84", "DependentChan" : "125",
				"BlockSignal" : [
					{"Name" : "bias_buff_V_offset_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mux_325_16_1_1_U116", "Parent" : "50"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mux_325_16_1_1_U117", "Parent" : "50"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mux_325_16_1_1_U118", "Parent" : "50"},
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mux_325_16_1_1_U119", "Parent" : "50"},
	{"ID" : "55", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mux_325_16_1_1_U120", "Parent" : "50"},
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mux_325_16_1_1_U121", "Parent" : "50"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mux_325_16_1_1_U122", "Parent" : "50"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mux_325_16_1_1_U123", "Parent" : "50"},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mac_muladd_7eOg_U124", "Parent" : "50"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U125", "Parent" : "50"},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U126", "Parent" : "50"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U127", "Parent" : "50"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U128", "Parent" : "50"},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U129", "Parent" : "50"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U130", "Parent" : "50"},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U131", "Parent" : "50"},
	{"ID" : "67", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U132", "Parent" : "50"},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U133", "Parent" : "50"},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U134", "Parent" : "50"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U135", "Parent" : "50"},
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U136", "Parent" : "50"},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U137", "Parent" : "50"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U138", "Parent" : "50"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U139", "Parent" : "50"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U140", "Parent" : "50"},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U141", "Parent" : "50"},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U142", "Parent" : "50"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U143", "Parent" : "50"},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U144", "Parent" : "50"},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U145", "Parent" : "50"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U146", "Parent" : "50"},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U147", "Parent" : "50"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.compute5_U0.conv_mul_mul_16s_fYi_U148", "Parent" : "50"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.store_output_U0", "Parent" : "14", "Child" : ["85", "86", "87", "88"],
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
			{"Name" : "out_V_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "124",
				"BlockSignal" : [
					{"Name" : "out_V_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fm_out_buff_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "39"},
			{"Name" : "fm_out_buff_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "40"},
			{"Name" : "fm_out_buff_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "41"},
			{"Name" : "fm_out_buff_3_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "42"},
			{"Name" : "fm_out_buff_4_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "43"},
			{"Name" : "fm_out_buff_5_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "44"},
			{"Name" : "fm_out_buff_6_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "45"},
			{"Name" : "fm_out_buff_7_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "46"},
			{"Name" : "ch_0_i_c1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "125",
				"BlockSignal" : [
					{"Name" : "ch_0_i_c1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "row_c", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "122",
				"BlockSignal" : [
					{"Name" : "row_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "col_c", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "123",
				"BlockSignal" : [
					{"Name" : "col_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.store_output_U0.conv_urem_11ns_6ng8j_U221", "Parent" : "84"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.store_output_U0.conv_urem_11ns_6ng8j_U222", "Parent" : "84"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.store_output_U0.conv_mac_muladd_1hbi_U223", "Parent" : "84"},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.store_output_U0.conv_mac_muladd_1hbi_U224", "Parent" : "84"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.ch_0_i_c_U", "Parent" : "14"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.bias_buff_0_V_c_U", "Parent" : "14"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.bias_buff_1_V_c_U", "Parent" : "14"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.bias_buff_2_V_c_U", "Parent" : "14"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.bias_buff_3_V_c_U", "Parent" : "14"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.bias_buff_4_V_c_U", "Parent" : "14"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.bias_buff_5_V_c_U", "Parent" : "14"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.bias_buff_6_V_c_U", "Parent" : "14"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.bias_buff_7_V_c_U", "Parent" : "14"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.bias_buff_8_V_c_U", "Parent" : "14"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.bias_buff_9_V_c_U", "Parent" : "14"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.bias_buff_10_V_c_U", "Parent" : "14"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.bias_buff_11_V_c_U", "Parent" : "14"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.bias_buff_12_V_c_U", "Parent" : "14"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.bias_buff_13_V_c_U", "Parent" : "14"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.bias_buff_14_V_c_U", "Parent" : "14"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.bias_buff_15_V_c_U", "Parent" : "14"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.bias_buff_16_V_c_U", "Parent" : "14"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.bias_buff_17_V_c_U", "Parent" : "14"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.bias_buff_18_V_c_U", "Parent" : "14"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.bias_buff_19_V_c_U", "Parent" : "14"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.bias_buff_20_V_c_U", "Parent" : "14"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.bias_buff_21_V_c_U", "Parent" : "14"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.bias_buff_22_V_c_U", "Parent" : "14"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.bias_buff_23_V_c_U", "Parent" : "14"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.bias_buff_24_V_c_U", "Parent" : "14"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.bias_buff_25_V_c_U", "Parent" : "14"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.bias_buff_26_V_c_U", "Parent" : "14"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.bias_buff_27_V_c_U", "Parent" : "14"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.bias_buff_28_V_c_U", "Parent" : "14"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.bias_buff_29_V_c_U", "Parent" : "14"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.bias_buff_30_V_c_U", "Parent" : "14"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.bias_buff_31_V_c_U", "Parent" : "14"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.row_c_U", "Parent" : "14"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.col_c_U", "Parent" : "14"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.out_V_offset_c_U", "Parent" : "14"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_fu_469.grp_dataflow_in_loop_fu_354.ch_0_i_c1_U", "Parent" : "14"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_load_input_fu_518", "Parent" : "0", "Child" : ["127"],
		"CDFG" : "load_input",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3274", "EstimateLatencyMax" : "3274",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in1_V", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in1_V_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "in1_V_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "in1_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in2_V_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "in2_V_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "in2_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in3_V", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in3_V_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "in3_V_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "in3_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "fm_in_buff_0_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "fm_in_buff_1_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "fm_in_buff_2_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "fm_row", "Type" : "None", "Direction" : "I"},
			{"Name" : "fm_col", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_load_input_fu_518.conv_urem_12ns_7nbkb_U1", "Parent" : "126"}]}


set ArgLastReadFirstWriteLatency {
	conv {
		IN1 {Type I LastRead 24 FirstWrite -1}
		IN2 {Type I LastRead 24 FirstWrite -1}
		IN3 {Type I LastRead 24 FirstWrite -1}
		W {Type I LastRead 17 FirstWrite -1}
		OUT_r {Type O LastRead 18 FirstWrite 17}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}
		in3_V {Type I LastRead 0 FirstWrite -1}
		weight_V {Type I LastRead 0 FirstWrite -1}
		bias_V {Type I LastRead 0 FirstWrite -1}
		out_V {Type I LastRead 0 FirstWrite -1}}
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
		col_c {Type I LastRead 0 FirstWrite -1}}
	load_input {
		in1_V {Type I LastRead 24 FirstWrite -1}
		in1_V_offset {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 24 FirstWrite -1}
		in2_V_offset {Type I LastRead 0 FirstWrite -1}
		in3_V {Type I LastRead 24 FirstWrite -1}
		in3_V_offset {Type I LastRead 0 FirstWrite -1}
		fm_in_buff_0_V {Type O LastRead -1 FirstWrite 25}
		fm_in_buff_1_V {Type O LastRead -1 FirstWrite 25}
		fm_in_buff_2_V {Type O LastRead -1 FirstWrite 25}
		fm_row {Type I LastRead 0 FirstWrite -1}
		fm_col {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	IN1 { m_axi {  { m_axi_IN1_AWVALID VALID 1 1 }  { m_axi_IN1_AWREADY READY 0 1 }  { m_axi_IN1_AWADDR ADDR 1 32 }  { m_axi_IN1_AWID ID 1 1 }  { m_axi_IN1_AWLEN LEN 1 8 }  { m_axi_IN1_AWSIZE SIZE 1 3 }  { m_axi_IN1_AWBURST BURST 1 2 }  { m_axi_IN1_AWLOCK LOCK 1 2 }  { m_axi_IN1_AWCACHE CACHE 1 4 }  { m_axi_IN1_AWPROT PROT 1 3 }  { m_axi_IN1_AWQOS QOS 1 4 }  { m_axi_IN1_AWREGION REGION 1 4 }  { m_axi_IN1_AWUSER USER 1 1 }  { m_axi_IN1_WVALID VALID 1 1 }  { m_axi_IN1_WREADY READY 0 1 }  { m_axi_IN1_WDATA DATA 1 32 }  { m_axi_IN1_WSTRB STRB 1 4 }  { m_axi_IN1_WLAST LAST 1 1 }  { m_axi_IN1_WID ID 1 1 }  { m_axi_IN1_WUSER USER 1 1 }  { m_axi_IN1_ARVALID VALID 1 1 }  { m_axi_IN1_ARREADY READY 0 1 }  { m_axi_IN1_ARADDR ADDR 1 32 }  { m_axi_IN1_ARID ID 1 1 }  { m_axi_IN1_ARLEN LEN 1 8 }  { m_axi_IN1_ARSIZE SIZE 1 3 }  { m_axi_IN1_ARBURST BURST 1 2 }  { m_axi_IN1_ARLOCK LOCK 1 2 }  { m_axi_IN1_ARCACHE CACHE 1 4 }  { m_axi_IN1_ARPROT PROT 1 3 }  { m_axi_IN1_ARQOS QOS 1 4 }  { m_axi_IN1_ARREGION REGION 1 4 }  { m_axi_IN1_ARUSER USER 1 1 }  { m_axi_IN1_RVALID VALID 0 1 }  { m_axi_IN1_RREADY READY 1 1 }  { m_axi_IN1_RDATA DATA 0 32 }  { m_axi_IN1_RLAST LAST 0 1 }  { m_axi_IN1_RID ID 0 1 }  { m_axi_IN1_RUSER USER 0 1 }  { m_axi_IN1_RRESP RESP 0 2 }  { m_axi_IN1_BVALID VALID 0 1 }  { m_axi_IN1_BREADY READY 1 1 }  { m_axi_IN1_BRESP RESP 0 2 }  { m_axi_IN1_BID ID 0 1 }  { m_axi_IN1_BUSER USER 0 1 } } }
	IN2 { m_axi {  { m_axi_IN2_AWVALID VALID 1 1 }  { m_axi_IN2_AWREADY READY 0 1 }  { m_axi_IN2_AWADDR ADDR 1 32 }  { m_axi_IN2_AWID ID 1 1 }  { m_axi_IN2_AWLEN LEN 1 8 }  { m_axi_IN2_AWSIZE SIZE 1 3 }  { m_axi_IN2_AWBURST BURST 1 2 }  { m_axi_IN2_AWLOCK LOCK 1 2 }  { m_axi_IN2_AWCACHE CACHE 1 4 }  { m_axi_IN2_AWPROT PROT 1 3 }  { m_axi_IN2_AWQOS QOS 1 4 }  { m_axi_IN2_AWREGION REGION 1 4 }  { m_axi_IN2_AWUSER USER 1 1 }  { m_axi_IN2_WVALID VALID 1 1 }  { m_axi_IN2_WREADY READY 0 1 }  { m_axi_IN2_WDATA DATA 1 32 }  { m_axi_IN2_WSTRB STRB 1 4 }  { m_axi_IN2_WLAST LAST 1 1 }  { m_axi_IN2_WID ID 1 1 }  { m_axi_IN2_WUSER USER 1 1 }  { m_axi_IN2_ARVALID VALID 1 1 }  { m_axi_IN2_ARREADY READY 0 1 }  { m_axi_IN2_ARADDR ADDR 1 32 }  { m_axi_IN2_ARID ID 1 1 }  { m_axi_IN2_ARLEN LEN 1 8 }  { m_axi_IN2_ARSIZE SIZE 1 3 }  { m_axi_IN2_ARBURST BURST 1 2 }  { m_axi_IN2_ARLOCK LOCK 1 2 }  { m_axi_IN2_ARCACHE CACHE 1 4 }  { m_axi_IN2_ARPROT PROT 1 3 }  { m_axi_IN2_ARQOS QOS 1 4 }  { m_axi_IN2_ARREGION REGION 1 4 }  { m_axi_IN2_ARUSER USER 1 1 }  { m_axi_IN2_RVALID VALID 0 1 }  { m_axi_IN2_RREADY READY 1 1 }  { m_axi_IN2_RDATA DATA 0 32 }  { m_axi_IN2_RLAST LAST 0 1 }  { m_axi_IN2_RID ID 0 1 }  { m_axi_IN2_RUSER USER 0 1 }  { m_axi_IN2_RRESP RESP 0 2 }  { m_axi_IN2_BVALID VALID 0 1 }  { m_axi_IN2_BREADY READY 1 1 }  { m_axi_IN2_BRESP RESP 0 2 }  { m_axi_IN2_BID ID 0 1 }  { m_axi_IN2_BUSER USER 0 1 } } }
	IN3 { m_axi {  { m_axi_IN3_AWVALID VALID 1 1 }  { m_axi_IN3_AWREADY READY 0 1 }  { m_axi_IN3_AWADDR ADDR 1 32 }  { m_axi_IN3_AWID ID 1 1 }  { m_axi_IN3_AWLEN LEN 1 8 }  { m_axi_IN3_AWSIZE SIZE 1 3 }  { m_axi_IN3_AWBURST BURST 1 2 }  { m_axi_IN3_AWLOCK LOCK 1 2 }  { m_axi_IN3_AWCACHE CACHE 1 4 }  { m_axi_IN3_AWPROT PROT 1 3 }  { m_axi_IN3_AWQOS QOS 1 4 }  { m_axi_IN3_AWREGION REGION 1 4 }  { m_axi_IN3_AWUSER USER 1 1 }  { m_axi_IN3_WVALID VALID 1 1 }  { m_axi_IN3_WREADY READY 0 1 }  { m_axi_IN3_WDATA DATA 1 32 }  { m_axi_IN3_WSTRB STRB 1 4 }  { m_axi_IN3_WLAST LAST 1 1 }  { m_axi_IN3_WID ID 1 1 }  { m_axi_IN3_WUSER USER 1 1 }  { m_axi_IN3_ARVALID VALID 1 1 }  { m_axi_IN3_ARREADY READY 0 1 }  { m_axi_IN3_ARADDR ADDR 1 32 }  { m_axi_IN3_ARID ID 1 1 }  { m_axi_IN3_ARLEN LEN 1 8 }  { m_axi_IN3_ARSIZE SIZE 1 3 }  { m_axi_IN3_ARBURST BURST 1 2 }  { m_axi_IN3_ARLOCK LOCK 1 2 }  { m_axi_IN3_ARCACHE CACHE 1 4 }  { m_axi_IN3_ARPROT PROT 1 3 }  { m_axi_IN3_ARQOS QOS 1 4 }  { m_axi_IN3_ARREGION REGION 1 4 }  { m_axi_IN3_ARUSER USER 1 1 }  { m_axi_IN3_RVALID VALID 0 1 }  { m_axi_IN3_RREADY READY 1 1 }  { m_axi_IN3_RDATA DATA 0 32 }  { m_axi_IN3_RLAST LAST 0 1 }  { m_axi_IN3_RID ID 0 1 }  { m_axi_IN3_RUSER USER 0 1 }  { m_axi_IN3_RRESP RESP 0 2 }  { m_axi_IN3_BVALID VALID 0 1 }  { m_axi_IN3_BREADY READY 1 1 }  { m_axi_IN3_BRESP RESP 0 2 }  { m_axi_IN3_BID ID 0 1 }  { m_axi_IN3_BUSER USER 0 1 } } }
	W { m_axi {  { m_axi_W_AWVALID VALID 1 1 }  { m_axi_W_AWREADY READY 0 1 }  { m_axi_W_AWADDR ADDR 1 32 }  { m_axi_W_AWID ID 1 1 }  { m_axi_W_AWLEN LEN 1 8 }  { m_axi_W_AWSIZE SIZE 1 3 }  { m_axi_W_AWBURST BURST 1 2 }  { m_axi_W_AWLOCK LOCK 1 2 }  { m_axi_W_AWCACHE CACHE 1 4 }  { m_axi_W_AWPROT PROT 1 3 }  { m_axi_W_AWQOS QOS 1 4 }  { m_axi_W_AWREGION REGION 1 4 }  { m_axi_W_AWUSER USER 1 1 }  { m_axi_W_WVALID VALID 1 1 }  { m_axi_W_WREADY READY 0 1 }  { m_axi_W_WDATA DATA 1 32 }  { m_axi_W_WSTRB STRB 1 4 }  { m_axi_W_WLAST LAST 1 1 }  { m_axi_W_WID ID 1 1 }  { m_axi_W_WUSER USER 1 1 }  { m_axi_W_ARVALID VALID 1 1 }  { m_axi_W_ARREADY READY 0 1 }  { m_axi_W_ARADDR ADDR 1 32 }  { m_axi_W_ARID ID 1 1 }  { m_axi_W_ARLEN LEN 1 8 }  { m_axi_W_ARSIZE SIZE 1 3 }  { m_axi_W_ARBURST BURST 1 2 }  { m_axi_W_ARLOCK LOCK 1 2 }  { m_axi_W_ARCACHE CACHE 1 4 }  { m_axi_W_ARPROT PROT 1 3 }  { m_axi_W_ARQOS QOS 1 4 }  { m_axi_W_ARREGION REGION 1 4 }  { m_axi_W_ARUSER USER 1 1 }  { m_axi_W_RVALID VALID 0 1 }  { m_axi_W_RREADY READY 1 1 }  { m_axi_W_RDATA DATA 0 32 }  { m_axi_W_RLAST LAST 0 1 }  { m_axi_W_RID ID 0 1 }  { m_axi_W_RUSER USER 0 1 }  { m_axi_W_RRESP RESP 0 2 }  { m_axi_W_BVALID VALID 0 1 }  { m_axi_W_BREADY READY 1 1 }  { m_axi_W_BRESP RESP 0 2 }  { m_axi_W_BID ID 0 1 }  { m_axi_W_BUSER USER 0 1 } } }
	OUT_r { m_axi {  { m_axi_OUT_r_AWVALID VALID 1 1 }  { m_axi_OUT_r_AWREADY READY 0 1 }  { m_axi_OUT_r_AWADDR ADDR 1 32 }  { m_axi_OUT_r_AWID ID 1 1 }  { m_axi_OUT_r_AWLEN LEN 1 8 }  { m_axi_OUT_r_AWSIZE SIZE 1 3 }  { m_axi_OUT_r_AWBURST BURST 1 2 }  { m_axi_OUT_r_AWLOCK LOCK 1 2 }  { m_axi_OUT_r_AWCACHE CACHE 1 4 }  { m_axi_OUT_r_AWPROT PROT 1 3 }  { m_axi_OUT_r_AWQOS QOS 1 4 }  { m_axi_OUT_r_AWREGION REGION 1 4 }  { m_axi_OUT_r_AWUSER USER 1 1 }  { m_axi_OUT_r_WVALID VALID 1 1 }  { m_axi_OUT_r_WREADY READY 0 1 }  { m_axi_OUT_r_WDATA DATA 1 64 }  { m_axi_OUT_r_WSTRB STRB 1 8 }  { m_axi_OUT_r_WLAST LAST 1 1 }  { m_axi_OUT_r_WID ID 1 1 }  { m_axi_OUT_r_WUSER USER 1 1 }  { m_axi_OUT_r_ARVALID VALID 1 1 }  { m_axi_OUT_r_ARREADY READY 0 1 }  { m_axi_OUT_r_ARADDR ADDR 1 32 }  { m_axi_OUT_r_ARID ID 1 1 }  { m_axi_OUT_r_ARLEN LEN 1 8 }  { m_axi_OUT_r_ARSIZE SIZE 1 3 }  { m_axi_OUT_r_ARBURST BURST 1 2 }  { m_axi_OUT_r_ARLOCK LOCK 1 2 }  { m_axi_OUT_r_ARCACHE CACHE 1 4 }  { m_axi_OUT_r_ARPROT PROT 1 3 }  { m_axi_OUT_r_ARQOS QOS 1 4 }  { m_axi_OUT_r_ARREGION REGION 1 4 }  { m_axi_OUT_r_ARUSER USER 1 1 }  { m_axi_OUT_r_RVALID VALID 0 1 }  { m_axi_OUT_r_RREADY READY 1 1 }  { m_axi_OUT_r_RDATA DATA 0 64 }  { m_axi_OUT_r_RLAST LAST 0 1 }  { m_axi_OUT_r_RID ID 0 1 }  { m_axi_OUT_r_RUSER USER 0 1 }  { m_axi_OUT_r_RRESP RESP 0 2 }  { m_axi_OUT_r_BVALID VALID 0 1 }  { m_axi_OUT_r_BREADY READY 1 1 }  { m_axi_OUT_r_BRESP RESP 0 2 }  { m_axi_OUT_r_BID ID 0 1 }  { m_axi_OUT_r_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ IN1 { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 64 MAX_WRITE_BURST_LENGTH 16 } } \
	{ IN2 { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 64 MAX_WRITE_BURST_LENGTH 16 } } \
	{ IN3 { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 64 MAX_WRITE_BURST_LENGTH 16 } } \
	{ W { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ OUT_r { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 32 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ IN1 1 }
	{ IN2 1 }
	{ IN3 1 }
	{ W 1 }
	{ OUT_r 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ IN1 1 }
	{ IN2 1 }
	{ IN3 1 }
	{ W 1 }
	{ OUT_r 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
