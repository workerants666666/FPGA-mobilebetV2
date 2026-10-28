set moduleName shortcut
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
set C_modelName {shortcut}
set C_modelType { void 0 }
set C_modelArgList {
	{ IN1 int 64 regular {axi_master 0}  }
	{ IN2 int 64 regular {axi_master 0}  }
	{ OUT_r int 64 regular {axi_master 1}  }
	{ src1_V int 32 regular {axi_slave 0}  }
	{ src2_V int 32 regular {axi_slave 0}  }
	{ dest_V int 32 regular {axi_slave 0}  }
	{ length_r int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "IN1", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "src1.V","cData": "int64","bit_use": { "low": 0,"up": 63},"offset": { "type": "dynamic","port_name": "src1_V","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 2499,"step" : 1}]}]}]} , 
 	{ "Name" : "IN2", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "src2.V","cData": "int64","bit_use": { "low": 0,"up": 63},"offset": { "type": "dynamic","port_name": "src2_V","bundle": "AXILiteS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 2499,"step" : 1}]}]}]} , 
 	{ "Name" : "OUT_r", "interface" : "axi_master", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "dest.V","cData": "int64","bit_use": { "low": 0,"up": 63},"offset": { "type": "dynamic","port_name": "dest_V","bundle": "AXILiteS"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 2499,"step" : 1}]}]}]} , 
 	{ "Name" : "src1_V", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "src2_V", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "dest_V", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "length_r", "interface" : "axi_slave", "bundle":"CTRL","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "length","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":40}, "offset_end" : {"in":47}} ]}
# RTL Port declarations: 
set portNum 155
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
	{ m_axi_IN1_WDATA sc_out sc_lv 64 signal 0 } 
	{ m_axi_IN1_WSTRB sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_IN1_RDATA sc_in sc_lv 64 signal 0 } 
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
	{ m_axi_IN2_WDATA sc_out sc_lv 64 signal 1 } 
	{ m_axi_IN2_WSTRB sc_out sc_lv 8 signal 1 } 
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
	{ m_axi_IN2_RDATA sc_in sc_lv 64 signal 1 } 
	{ m_axi_IN2_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_IN2_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_IN2_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_IN2_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_IN2_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_IN2_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_IN2_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_IN2_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_IN2_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_OUT_r_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_OUT_r_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_OUT_r_AWADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_OUT_r_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_OUT_r_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_OUT_r_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_OUT_r_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_OUT_r_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_OUT_r_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_OUT_r_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_OUT_r_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_OUT_r_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_OUT_r_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_OUT_r_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_OUT_r_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_OUT_r_WDATA sc_out sc_lv 64 signal 2 } 
	{ m_axi_OUT_r_WSTRB sc_out sc_lv 8 signal 2 } 
	{ m_axi_OUT_r_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_OUT_r_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_OUT_r_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_OUT_r_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_OUT_r_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_OUT_r_ARADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_OUT_r_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_OUT_r_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_OUT_r_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_OUT_r_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_OUT_r_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_OUT_r_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_OUT_r_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_OUT_r_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_OUT_r_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_OUT_r_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_OUT_r_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_OUT_r_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_OUT_r_RDATA sc_in sc_lv 64 signal 2 } 
	{ m_axi_OUT_r_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_OUT_r_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_OUT_r_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_OUT_r_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_OUT_r_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_OUT_r_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_OUT_r_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_OUT_r_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_OUT_r_BUSER sc_in sc_lv 1 signal 2 } 
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
	{ "name": "s_axi_CTRL_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CTRL", "role": "AWADDR" },"address":[{"name":"shortcut","role":"start","value":"0","valid_bit":"0"},{"name":"shortcut","role":"continue","value":"0","valid_bit":"4"},{"name":"shortcut","role":"auto_start","value":"0","valid_bit":"7"},{"name":"src1_V","role":"data","value":"16"},{"name":"src2_V","role":"data","value":"24"},{"name":"dest_V","role":"data","value":"32"},{"name":"length_r","role":"data","value":"40"}] },
	{ "name": "s_axi_CTRL_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CTRL", "role": "ARADDR" },"address":[{"name":"shortcut","role":"start","value":"0","valid_bit":"0"},{"name":"shortcut","role":"done","value":"0","valid_bit":"1"},{"name":"shortcut","role":"idle","value":"0","valid_bit":"2"},{"name":"shortcut","role":"ready","value":"0","valid_bit":"3"},{"name":"shortcut","role":"auto_start","value":"0","valid_bit":"7"}] },
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
 	{ "name": "m_axi_IN1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "IN1", "role": "WDATA" }} , 
 	{ "name": "m_axi_IN1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "IN1", "role": "WSTRB" }} , 
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
 	{ "name": "m_axi_IN1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "IN1", "role": "RDATA" }} , 
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
 	{ "name": "m_axi_IN2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "IN2", "role": "WDATA" }} , 
 	{ "name": "m_axi_IN2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "IN2", "role": "WSTRB" }} , 
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
 	{ "name": "m_axi_IN2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "IN2", "role": "RDATA" }} , 
 	{ "name": "m_axi_IN2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN2", "role": "RLAST" }} , 
 	{ "name": "m_axi_IN2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN2", "role": "RID" }} , 
 	{ "name": "m_axi_IN2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN2", "role": "RUSER" }} , 
 	{ "name": "m_axi_IN2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IN2", "role": "RRESP" }} , 
 	{ "name": "m_axi_IN2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN2", "role": "BVALID" }} , 
 	{ "name": "m_axi_IN2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN2", "role": "BREADY" }} , 
 	{ "name": "m_axi_IN2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "IN2", "role": "BRESP" }} , 
 	{ "name": "m_axi_IN2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN2", "role": "BID" }} , 
 	{ "name": "m_axi_IN2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IN2", "role": "BUSER" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "shortcut",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "IN1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "IN1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "IN1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "IN2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "IN2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "IN2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "OUT_r", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "OUT_r_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "OUT_r_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "OUT_r_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "src1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "src2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "dest_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "length_r", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.shortcut_CTRL_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.shortcut_IN1_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.shortcut_IN2_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.shortcut_OUT_r_m_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	shortcut {
		IN1 {Type I LastRead 10 FirstWrite -1}
		IN2 {Type I LastRead 10 FirstWrite -1}
		OUT_r {Type O LastRead 10 FirstWrite 12}
		src1_V {Type I LastRead 0 FirstWrite -1}
		src2_V {Type I LastRead 0 FirstWrite -1}
		dest_V {Type I LastRead 0 FirstWrite -1}
		length_r {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	IN1 { m_axi {  { m_axi_IN1_AWVALID VALID 1 1 }  { m_axi_IN1_AWREADY READY 0 1 }  { m_axi_IN1_AWADDR ADDR 1 32 }  { m_axi_IN1_AWID ID 1 1 }  { m_axi_IN1_AWLEN LEN 1 8 }  { m_axi_IN1_AWSIZE SIZE 1 3 }  { m_axi_IN1_AWBURST BURST 1 2 }  { m_axi_IN1_AWLOCK LOCK 1 2 }  { m_axi_IN1_AWCACHE CACHE 1 4 }  { m_axi_IN1_AWPROT PROT 1 3 }  { m_axi_IN1_AWQOS QOS 1 4 }  { m_axi_IN1_AWREGION REGION 1 4 }  { m_axi_IN1_AWUSER USER 1 1 }  { m_axi_IN1_WVALID VALID 1 1 }  { m_axi_IN1_WREADY READY 0 1 }  { m_axi_IN1_WDATA DATA 1 64 }  { m_axi_IN1_WSTRB STRB 1 8 }  { m_axi_IN1_WLAST LAST 1 1 }  { m_axi_IN1_WID ID 1 1 }  { m_axi_IN1_WUSER USER 1 1 }  { m_axi_IN1_ARVALID VALID 1 1 }  { m_axi_IN1_ARREADY READY 0 1 }  { m_axi_IN1_ARADDR ADDR 1 32 }  { m_axi_IN1_ARID ID 1 1 }  { m_axi_IN1_ARLEN LEN 1 8 }  { m_axi_IN1_ARSIZE SIZE 1 3 }  { m_axi_IN1_ARBURST BURST 1 2 }  { m_axi_IN1_ARLOCK LOCK 1 2 }  { m_axi_IN1_ARCACHE CACHE 1 4 }  { m_axi_IN1_ARPROT PROT 1 3 }  { m_axi_IN1_ARQOS QOS 1 4 }  { m_axi_IN1_ARREGION REGION 1 4 }  { m_axi_IN1_ARUSER USER 1 1 }  { m_axi_IN1_RVALID VALID 0 1 }  { m_axi_IN1_RREADY READY 1 1 }  { m_axi_IN1_RDATA DATA 0 64 }  { m_axi_IN1_RLAST LAST 0 1 }  { m_axi_IN1_RID ID 0 1 }  { m_axi_IN1_RUSER USER 0 1 }  { m_axi_IN1_RRESP RESP 0 2 }  { m_axi_IN1_BVALID VALID 0 1 }  { m_axi_IN1_BREADY READY 1 1 }  { m_axi_IN1_BRESP RESP 0 2 }  { m_axi_IN1_BID ID 0 1 }  { m_axi_IN1_BUSER USER 0 1 } } }
	IN2 { m_axi {  { m_axi_IN2_AWVALID VALID 1 1 }  { m_axi_IN2_AWREADY READY 0 1 }  { m_axi_IN2_AWADDR ADDR 1 32 }  { m_axi_IN2_AWID ID 1 1 }  { m_axi_IN2_AWLEN LEN 1 8 }  { m_axi_IN2_AWSIZE SIZE 1 3 }  { m_axi_IN2_AWBURST BURST 1 2 }  { m_axi_IN2_AWLOCK LOCK 1 2 }  { m_axi_IN2_AWCACHE CACHE 1 4 }  { m_axi_IN2_AWPROT PROT 1 3 }  { m_axi_IN2_AWQOS QOS 1 4 }  { m_axi_IN2_AWREGION REGION 1 4 }  { m_axi_IN2_AWUSER USER 1 1 }  { m_axi_IN2_WVALID VALID 1 1 }  { m_axi_IN2_WREADY READY 0 1 }  { m_axi_IN2_WDATA DATA 1 64 }  { m_axi_IN2_WSTRB STRB 1 8 }  { m_axi_IN2_WLAST LAST 1 1 }  { m_axi_IN2_WID ID 1 1 }  { m_axi_IN2_WUSER USER 1 1 }  { m_axi_IN2_ARVALID VALID 1 1 }  { m_axi_IN2_ARREADY READY 0 1 }  { m_axi_IN2_ARADDR ADDR 1 32 }  { m_axi_IN2_ARID ID 1 1 }  { m_axi_IN2_ARLEN LEN 1 8 }  { m_axi_IN2_ARSIZE SIZE 1 3 }  { m_axi_IN2_ARBURST BURST 1 2 }  { m_axi_IN2_ARLOCK LOCK 1 2 }  { m_axi_IN2_ARCACHE CACHE 1 4 }  { m_axi_IN2_ARPROT PROT 1 3 }  { m_axi_IN2_ARQOS QOS 1 4 }  { m_axi_IN2_ARREGION REGION 1 4 }  { m_axi_IN2_ARUSER USER 1 1 }  { m_axi_IN2_RVALID VALID 0 1 }  { m_axi_IN2_RREADY READY 1 1 }  { m_axi_IN2_RDATA DATA 0 64 }  { m_axi_IN2_RLAST LAST 0 1 }  { m_axi_IN2_RID ID 0 1 }  { m_axi_IN2_RUSER USER 0 1 }  { m_axi_IN2_RRESP RESP 0 2 }  { m_axi_IN2_BVALID VALID 0 1 }  { m_axi_IN2_BREADY READY 1 1 }  { m_axi_IN2_BRESP RESP 0 2 }  { m_axi_IN2_BID ID 0 1 }  { m_axi_IN2_BUSER USER 0 1 } } }
	OUT_r { m_axi {  { m_axi_OUT_r_AWVALID VALID 1 1 }  { m_axi_OUT_r_AWREADY READY 0 1 }  { m_axi_OUT_r_AWADDR ADDR 1 32 }  { m_axi_OUT_r_AWID ID 1 1 }  { m_axi_OUT_r_AWLEN LEN 1 8 }  { m_axi_OUT_r_AWSIZE SIZE 1 3 }  { m_axi_OUT_r_AWBURST BURST 1 2 }  { m_axi_OUT_r_AWLOCK LOCK 1 2 }  { m_axi_OUT_r_AWCACHE CACHE 1 4 }  { m_axi_OUT_r_AWPROT PROT 1 3 }  { m_axi_OUT_r_AWQOS QOS 1 4 }  { m_axi_OUT_r_AWREGION REGION 1 4 }  { m_axi_OUT_r_AWUSER USER 1 1 }  { m_axi_OUT_r_WVALID VALID 1 1 }  { m_axi_OUT_r_WREADY READY 0 1 }  { m_axi_OUT_r_WDATA DATA 1 64 }  { m_axi_OUT_r_WSTRB STRB 1 8 }  { m_axi_OUT_r_WLAST LAST 1 1 }  { m_axi_OUT_r_WID ID 1 1 }  { m_axi_OUT_r_WUSER USER 1 1 }  { m_axi_OUT_r_ARVALID VALID 1 1 }  { m_axi_OUT_r_ARREADY READY 0 1 }  { m_axi_OUT_r_ARADDR ADDR 1 32 }  { m_axi_OUT_r_ARID ID 1 1 }  { m_axi_OUT_r_ARLEN LEN 1 8 }  { m_axi_OUT_r_ARSIZE SIZE 1 3 }  { m_axi_OUT_r_ARBURST BURST 1 2 }  { m_axi_OUT_r_ARLOCK LOCK 1 2 }  { m_axi_OUT_r_ARCACHE CACHE 1 4 }  { m_axi_OUT_r_ARPROT PROT 1 3 }  { m_axi_OUT_r_ARQOS QOS 1 4 }  { m_axi_OUT_r_ARREGION REGION 1 4 }  { m_axi_OUT_r_ARUSER USER 1 1 }  { m_axi_OUT_r_RVALID VALID 0 1 }  { m_axi_OUT_r_RREADY READY 1 1 }  { m_axi_OUT_r_RDATA DATA 0 64 }  { m_axi_OUT_r_RLAST LAST 0 1 }  { m_axi_OUT_r_RID ID 0 1 }  { m_axi_OUT_r_RUSER USER 0 1 }  { m_axi_OUT_r_RRESP RESP 0 2 }  { m_axi_OUT_r_BVALID VALID 0 1 }  { m_axi_OUT_r_BREADY READY 1 1 }  { m_axi_OUT_r_BRESP RESP 0 2 }  { m_axi_OUT_r_BID ID 0 1 }  { m_axi_OUT_r_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ IN1 { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 256 MAX_WRITE_BURST_LENGTH 16 } } \
	{ IN2 { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 256 MAX_WRITE_BURST_LENGTH 16 } } \
	{ OUT_r { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 256 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ IN1 1 }
	{ IN2 1 }
	{ OUT_r 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ IN1 1 }
	{ IN2 1 }
	{ OUT_r 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
