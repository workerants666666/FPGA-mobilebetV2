
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set src1_V__src2_V__dest_V__length__return_group [add_wave_group src1_V__src2_V__dest_V__length__return(axi_slave) -into $cinoutgroup]
add_wave /apatb_shortcut_top/AESL_inst_shortcut/interrupt -into $src1_V__src2_V__dest_V__length__return_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/s_axi_CTRL_BRESP -into $src1_V__src2_V__dest_V__length__return_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/s_axi_CTRL_BREADY -into $src1_V__src2_V__dest_V__length__return_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/s_axi_CTRL_BVALID -into $src1_V__src2_V__dest_V__length__return_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/s_axi_CTRL_RRESP -into $src1_V__src2_V__dest_V__length__return_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/s_axi_CTRL_RDATA -into $src1_V__src2_V__dest_V__length__return_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/s_axi_CTRL_RREADY -into $src1_V__src2_V__dest_V__length__return_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/s_axi_CTRL_RVALID -into $src1_V__src2_V__dest_V__length__return_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/s_axi_CTRL_ARREADY -into $src1_V__src2_V__dest_V__length__return_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/s_axi_CTRL_ARVALID -into $src1_V__src2_V__dest_V__length__return_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/s_axi_CTRL_ARADDR -into $src1_V__src2_V__dest_V__length__return_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/s_axi_CTRL_WSTRB -into $src1_V__src2_V__dest_V__length__return_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/s_axi_CTRL_WDATA -into $src1_V__src2_V__dest_V__length__return_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/s_axi_CTRL_WREADY -into $src1_V__src2_V__dest_V__length__return_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/s_axi_CTRL_WVALID -into $src1_V__src2_V__dest_V__length__return_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/s_axi_CTRL_AWREADY -into $src1_V__src2_V__dest_V__length__return_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/s_axi_CTRL_AWVALID -into $src1_V__src2_V__dest_V__length__return_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/s_axi_CTRL_AWADDR -into $src1_V__src2_V__dest_V__length__return_group -radix hex
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set dest_group [add_wave_group dest(axi_master) -into $coutputgroup]
set rdata_group [add_wave_group "Read Channel" -into $dest_group]
set wdata_group [add_wave_group "Write Channel" -into $dest_group]
set ctrl_group [add_wave_group "Handshakes" -into $dest_group]
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_BUSER -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_BID -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_BRESP -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_RRESP -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_RUSER -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_RID -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_RDATA -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_ARUSER -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_ARREGION -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_ARQOS -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_ARPROT -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_ARBURST -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_ARLEN -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_ARID -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_ARADDR -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_WUSER -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_WID -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_WSTRB -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_WDATA -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_AWUSER -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_AWREGION -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_AWQOS -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_AWPROT -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_AWBURST -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_AWLEN -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_AWID -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_AWADDR -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_OUT_r_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set src2_group [add_wave_group src2(axi_master) -into $cinputgroup]
set rdata_group [add_wave_group "Read Channel" -into $src2_group]
set wdata_group [add_wave_group "Write Channel" -into $src2_group]
set ctrl_group [add_wave_group "Handshakes" -into $src2_group]
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_BUSER -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_BID -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_BRESP -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_RRESP -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_RUSER -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_RID -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_RDATA -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_ARUSER -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_ARREGION -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_ARQOS -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_ARPROT -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_ARBURST -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_ARLEN -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_ARID -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_ARADDR -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_WUSER -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_WID -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_WSTRB -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_WDATA -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_AWUSER -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_AWREGION -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_AWQOS -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_AWPROT -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_AWBURST -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_AWLEN -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_AWID -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_AWADDR -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN2_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set src1_group [add_wave_group src1(axi_master) -into $cinputgroup]
set rdata_group [add_wave_group "Read Channel" -into $src1_group]
set wdata_group [add_wave_group "Write Channel" -into $src1_group]
set ctrl_group [add_wave_group "Handshakes" -into $src1_group]
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_BUSER -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_BID -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_BRESP -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_RRESP -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_RUSER -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_RID -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_RDATA -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_ARUSER -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_ARREGION -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_ARQOS -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_ARPROT -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_ARBURST -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_ARLEN -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_ARID -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_ARADDR -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_WUSER -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_WID -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_WSTRB -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_WDATA -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_AWUSER -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_AWREGION -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_AWQOS -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_AWPROT -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_AWBURST -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_AWLEN -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_AWID -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_AWADDR -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/AESL_inst_shortcut/m_axi_IN1_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake(internal)" -into $designtopgroup]
add_wave /apatb_shortcut_top/AESL_inst_shortcut/ap_done -into $blocksiggroup
add_wave /apatb_shortcut_top/AESL_inst_shortcut/ap_idle -into $blocksiggroup
add_wave /apatb_shortcut_top/AESL_inst_shortcut/ap_ready -into $blocksiggroup
add_wave /apatb_shortcut_top/AESL_inst_shortcut/ap_start -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_shortcut_top/AESL_inst_shortcut/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_shortcut_top/AESL_inst_shortcut/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_shortcut_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_shortcut_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_shortcut_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_shortcut_top/LENGTH_IN1 -into $tb_portdepth_group -radix hex
add_wave /apatb_shortcut_top/LENGTH_IN2 -into $tb_portdepth_group -radix hex
add_wave /apatb_shortcut_top/LENGTH_OUT_r -into $tb_portdepth_group -radix hex
add_wave /apatb_shortcut_top/LENGTH_src1_V -into $tb_portdepth_group -radix hex
add_wave /apatb_shortcut_top/LENGTH_src2_V -into $tb_portdepth_group -radix hex
add_wave /apatb_shortcut_top/LENGTH_dest_V -into $tb_portdepth_group -radix hex
add_wave /apatb_shortcut_top/LENGTH_length_r -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_src1_V__src2_V__dest_V__length__return_group [add_wave_group src1_V__src2_V__dest_V__length__return(axi_slave) -into $tbcinoutgroup]
add_wave /apatb_shortcut_top/CTRL_INTERRUPT -into $tb_src1_V__src2_V__dest_V__length__return_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/CTRL_BRESP -into $tb_src1_V__src2_V__dest_V__length__return_group -radix hex
add_wave /apatb_shortcut_top/CTRL_BREADY -into $tb_src1_V__src2_V__dest_V__length__return_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/CTRL_BVALID -into $tb_src1_V__src2_V__dest_V__length__return_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/CTRL_RRESP -into $tb_src1_V__src2_V__dest_V__length__return_group -radix hex
add_wave /apatb_shortcut_top/CTRL_RDATA -into $tb_src1_V__src2_V__dest_V__length__return_group -radix hex
add_wave /apatb_shortcut_top/CTRL_RREADY -into $tb_src1_V__src2_V__dest_V__length__return_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/CTRL_RVALID -into $tb_src1_V__src2_V__dest_V__length__return_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/CTRL_ARREADY -into $tb_src1_V__src2_V__dest_V__length__return_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/CTRL_ARVALID -into $tb_src1_V__src2_V__dest_V__length__return_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/CTRL_ARADDR -into $tb_src1_V__src2_V__dest_V__length__return_group -radix hex
add_wave /apatb_shortcut_top/CTRL_WSTRB -into $tb_src1_V__src2_V__dest_V__length__return_group -radix hex
add_wave /apatb_shortcut_top/CTRL_WDATA -into $tb_src1_V__src2_V__dest_V__length__return_group -radix hex
add_wave /apatb_shortcut_top/CTRL_WREADY -into $tb_src1_V__src2_V__dest_V__length__return_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/CTRL_WVALID -into $tb_src1_V__src2_V__dest_V__length__return_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/CTRL_AWREADY -into $tb_src1_V__src2_V__dest_V__length__return_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/CTRL_AWVALID -into $tb_src1_V__src2_V__dest_V__length__return_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/CTRL_AWADDR -into $tb_src1_V__src2_V__dest_V__length__return_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_dest_group [add_wave_group dest(axi_master) -into $tbcoutputgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_dest_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_dest_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_dest_group]
add_wave /apatb_shortcut_top/OUT_r_BUSER -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/OUT_r_BID -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/OUT_r_BRESP -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/OUT_r_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/OUT_r_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/OUT_r_RRESP -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/OUT_r_RUSER -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/OUT_r_RID -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/OUT_r_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/OUT_r_RDATA -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/OUT_r_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/OUT_r_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/OUT_r_ARUSER -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/OUT_r_ARREGION -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/OUT_r_ARQOS -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/OUT_r_ARPROT -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/OUT_r_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/OUT_r_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/OUT_r_ARBURST -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/OUT_r_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/OUT_r_ARLEN -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/OUT_r_ARID -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/OUT_r_ARADDR -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/OUT_r_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/OUT_r_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/OUT_r_WUSER -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/OUT_r_WID -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/OUT_r_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/OUT_r_WSTRB -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/OUT_r_WDATA -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/OUT_r_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/OUT_r_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/OUT_r_AWUSER -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/OUT_r_AWREGION -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/OUT_r_AWQOS -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/OUT_r_AWPROT -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/OUT_r_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/OUT_r_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/OUT_r_AWBURST -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/OUT_r_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/OUT_r_AWLEN -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/OUT_r_AWID -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/OUT_r_AWADDR -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/OUT_r_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/OUT_r_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_src2_group [add_wave_group src2(axi_master) -into $tbcinputgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_src2_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_src2_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_src2_group]
add_wave /apatb_shortcut_top/IN2_BUSER -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN2_BID -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN2_BRESP -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN2_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/IN2_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/IN2_RRESP -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/IN2_RUSER -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/IN2_RID -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/IN2_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/IN2_RDATA -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/IN2_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/IN2_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/IN2_ARUSER -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/IN2_ARREGION -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/IN2_ARQOS -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/IN2_ARPROT -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/IN2_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/IN2_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/IN2_ARBURST -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/IN2_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/IN2_ARLEN -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/IN2_ARID -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/IN2_ARADDR -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/IN2_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/IN2_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/IN2_WUSER -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN2_WID -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN2_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/IN2_WSTRB -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN2_WDATA -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN2_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/IN2_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/IN2_AWUSER -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN2_AWREGION -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN2_AWQOS -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN2_AWPROT -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN2_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN2_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN2_AWBURST -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN2_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN2_AWLEN -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN2_AWID -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN2_AWADDR -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN2_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/IN2_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set tb_src1_group [add_wave_group src1(axi_master) -into $tbcinputgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_src1_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_src1_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_src1_group]
add_wave /apatb_shortcut_top/IN1_BUSER -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN1_BID -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN1_BRESP -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN1_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/IN1_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/IN1_RRESP -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/IN1_RUSER -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/IN1_RID -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/IN1_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/IN1_RDATA -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/IN1_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/IN1_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/IN1_ARUSER -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/IN1_ARREGION -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/IN1_ARQOS -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/IN1_ARPROT -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/IN1_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/IN1_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/IN1_ARBURST -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/IN1_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/IN1_ARLEN -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/IN1_ARID -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/IN1_ARADDR -into $rdata_group -radix hex
add_wave /apatb_shortcut_top/IN1_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/IN1_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/IN1_WUSER -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN1_WID -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN1_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/IN1_WSTRB -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN1_WDATA -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN1_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/IN1_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/IN1_AWUSER -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN1_AWREGION -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN1_AWQOS -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN1_AWPROT -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN1_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN1_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN1_AWBURST -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN1_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN1_AWLEN -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN1_AWID -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN1_AWADDR -into $wdata_group -radix hex
add_wave /apatb_shortcut_top/IN1_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_shortcut_top/IN1_AWVALID -into $ctrl_group -color #ffff00 -radix hex
save_wave_config shortcut.wcfg
run all
quit

