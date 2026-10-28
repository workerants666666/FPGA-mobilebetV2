// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      shortcut
`define AUTOTB_DUT_INST AESL_inst_shortcut
`define AUTOTB_TOP      apatb_shortcut_top
`define AUTOTB_LAT_RESULT_FILE "shortcut.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "shortcut.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_shortcut_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 2.50

`define AESL_DEPTH_IN1 1
`define AESL_DEPTH_IN2 1
`define AESL_DEPTH_OUT_r 1
`define AESL_DEPTH_src1_V 1
`define AESL_DEPTH_src2_V 1
`define AESL_DEPTH_dest_V 1
`define AESL_DEPTH_length_r 1
`define AUTOTB_TVIN_IN1  "../tv/cdatafile/c.shortcut.autotvin_IN1.dat"
`define AUTOTB_TVIN_IN2  "../tv/cdatafile/c.shortcut.autotvin_IN2.dat"
`define AUTOTB_TVIN_src1_V  "../tv/cdatafile/c.shortcut.autotvin_src1_V.dat"
`define AUTOTB_TVIN_src2_V  "../tv/cdatafile/c.shortcut.autotvin_src2_V.dat"
`define AUTOTB_TVIN_dest_V  "../tv/cdatafile/c.shortcut.autotvin_dest_V.dat"
`define AUTOTB_TVIN_length_r  "../tv/cdatafile/c.shortcut.autotvin_length_r.dat"
`define AUTOTB_TVIN_IN1_out_wrapc  "../tv/rtldatafile/rtl.shortcut.autotvin_IN1.dat"
`define AUTOTB_TVIN_IN2_out_wrapc  "../tv/rtldatafile/rtl.shortcut.autotvin_IN2.dat"
`define AUTOTB_TVIN_src1_V_out_wrapc  "../tv/rtldatafile/rtl.shortcut.autotvin_src1_V.dat"
`define AUTOTB_TVIN_src2_V_out_wrapc  "../tv/rtldatafile/rtl.shortcut.autotvin_src2_V.dat"
`define AUTOTB_TVIN_dest_V_out_wrapc  "../tv/rtldatafile/rtl.shortcut.autotvin_dest_V.dat"
`define AUTOTB_TVIN_length_r_out_wrapc  "../tv/rtldatafile/rtl.shortcut.autotvin_length_r.dat"
`define AUTOTB_TVOUT_OUT_r  "../tv/cdatafile/c.shortcut.autotvout_OUT_r.dat"
`define AUTOTB_TVOUT_OUT_r_out_wrapc  "../tv/rtldatafile/rtl.shortcut.autotvout_OUT_r.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = -1;
parameter LENGTH_IN1 = 2500;
parameter LENGTH_IN2 = 2500;
parameter LENGTH_OUT_r = 2500;
parameter LENGTH_src1_V = 1;
parameter LENGTH_src2_V = 1;
parameter LENGTH_dest_V = 1;
parameter LENGTH_length_r = 1;

task read_token;
    input integer fp;
    output reg [183 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [5 : 0] CTRL_AWADDR;
wire  CTRL_AWVALID;
wire  CTRL_AWREADY;
wire  CTRL_WVALID;
wire  CTRL_WREADY;
wire [31 : 0] CTRL_WDATA;
wire [3 : 0] CTRL_WSTRB;
wire [5 : 0] CTRL_ARADDR;
wire  CTRL_ARVALID;
wire  CTRL_ARREADY;
wire  CTRL_RVALID;
wire  CTRL_RREADY;
wire [31 : 0] CTRL_RDATA;
wire [1 : 0] CTRL_RRESP;
wire  CTRL_BVALID;
wire  CTRL_BREADY;
wire [1 : 0] CTRL_BRESP;
wire  CTRL_INTERRUPT;
wire  IN1_AWVALID;
wire  IN1_AWREADY;
wire [31 : 0] IN1_AWADDR;
wire [0 : 0] IN1_AWID;
wire [7 : 0] IN1_AWLEN;
wire [2 : 0] IN1_AWSIZE;
wire [1 : 0] IN1_AWBURST;
wire [1 : 0] IN1_AWLOCK;
wire [3 : 0] IN1_AWCACHE;
wire [2 : 0] IN1_AWPROT;
wire [3 : 0] IN1_AWQOS;
wire [3 : 0] IN1_AWREGION;
wire [0 : 0] IN1_AWUSER;
wire  IN1_WVALID;
wire  IN1_WREADY;
wire [63 : 0] IN1_WDATA;
wire [7 : 0] IN1_WSTRB;
wire  IN1_WLAST;
wire [0 : 0] IN1_WID;
wire [0 : 0] IN1_WUSER;
wire  IN1_ARVALID;
wire  IN1_ARREADY;
wire [31 : 0] IN1_ARADDR;
wire [0 : 0] IN1_ARID;
wire [7 : 0] IN1_ARLEN;
wire [2 : 0] IN1_ARSIZE;
wire [1 : 0] IN1_ARBURST;
wire [1 : 0] IN1_ARLOCK;
wire [3 : 0] IN1_ARCACHE;
wire [2 : 0] IN1_ARPROT;
wire [3 : 0] IN1_ARQOS;
wire [3 : 0] IN1_ARREGION;
wire [0 : 0] IN1_ARUSER;
wire  IN1_RVALID;
wire  IN1_RREADY;
wire [63 : 0] IN1_RDATA;
wire  IN1_RLAST;
wire [0 : 0] IN1_RID;
wire [0 : 0] IN1_RUSER;
wire [1 : 0] IN1_RRESP;
wire  IN1_BVALID;
wire  IN1_BREADY;
wire [1 : 0] IN1_BRESP;
wire [0 : 0] IN1_BID;
wire [0 : 0] IN1_BUSER;
wire  IN2_AWVALID;
wire  IN2_AWREADY;
wire [31 : 0] IN2_AWADDR;
wire [0 : 0] IN2_AWID;
wire [7 : 0] IN2_AWLEN;
wire [2 : 0] IN2_AWSIZE;
wire [1 : 0] IN2_AWBURST;
wire [1 : 0] IN2_AWLOCK;
wire [3 : 0] IN2_AWCACHE;
wire [2 : 0] IN2_AWPROT;
wire [3 : 0] IN2_AWQOS;
wire [3 : 0] IN2_AWREGION;
wire [0 : 0] IN2_AWUSER;
wire  IN2_WVALID;
wire  IN2_WREADY;
wire [63 : 0] IN2_WDATA;
wire [7 : 0] IN2_WSTRB;
wire  IN2_WLAST;
wire [0 : 0] IN2_WID;
wire [0 : 0] IN2_WUSER;
wire  IN2_ARVALID;
wire  IN2_ARREADY;
wire [31 : 0] IN2_ARADDR;
wire [0 : 0] IN2_ARID;
wire [7 : 0] IN2_ARLEN;
wire [2 : 0] IN2_ARSIZE;
wire [1 : 0] IN2_ARBURST;
wire [1 : 0] IN2_ARLOCK;
wire [3 : 0] IN2_ARCACHE;
wire [2 : 0] IN2_ARPROT;
wire [3 : 0] IN2_ARQOS;
wire [3 : 0] IN2_ARREGION;
wire [0 : 0] IN2_ARUSER;
wire  IN2_RVALID;
wire  IN2_RREADY;
wire [63 : 0] IN2_RDATA;
wire  IN2_RLAST;
wire [0 : 0] IN2_RID;
wire [0 : 0] IN2_RUSER;
wire [1 : 0] IN2_RRESP;
wire  IN2_BVALID;
wire  IN2_BREADY;
wire [1 : 0] IN2_BRESP;
wire [0 : 0] IN2_BID;
wire [0 : 0] IN2_BUSER;
wire  OUT_r_AWVALID;
wire  OUT_r_AWREADY;
wire [31 : 0] OUT_r_AWADDR;
wire [0 : 0] OUT_r_AWID;
wire [7 : 0] OUT_r_AWLEN;
wire [2 : 0] OUT_r_AWSIZE;
wire [1 : 0] OUT_r_AWBURST;
wire [1 : 0] OUT_r_AWLOCK;
wire [3 : 0] OUT_r_AWCACHE;
wire [2 : 0] OUT_r_AWPROT;
wire [3 : 0] OUT_r_AWQOS;
wire [3 : 0] OUT_r_AWREGION;
wire [0 : 0] OUT_r_AWUSER;
wire  OUT_r_WVALID;
wire  OUT_r_WREADY;
wire [63 : 0] OUT_r_WDATA;
wire [7 : 0] OUT_r_WSTRB;
wire  OUT_r_WLAST;
wire [0 : 0] OUT_r_WID;
wire [0 : 0] OUT_r_WUSER;
wire  OUT_r_ARVALID;
wire  OUT_r_ARREADY;
wire [31 : 0] OUT_r_ARADDR;
wire [0 : 0] OUT_r_ARID;
wire [7 : 0] OUT_r_ARLEN;
wire [2 : 0] OUT_r_ARSIZE;
wire [1 : 0] OUT_r_ARBURST;
wire [1 : 0] OUT_r_ARLOCK;
wire [3 : 0] OUT_r_ARCACHE;
wire [2 : 0] OUT_r_ARPROT;
wire [3 : 0] OUT_r_ARQOS;
wire [3 : 0] OUT_r_ARREGION;
wire [0 : 0] OUT_r_ARUSER;
wire  OUT_r_RVALID;
wire  OUT_r_RREADY;
wire [63 : 0] OUT_r_RDATA;
wire  OUT_r_RLAST;
wire [0 : 0] OUT_r_RID;
wire [0 : 0] OUT_r_RUSER;
wire [1 : 0] OUT_r_RRESP;
wire  OUT_r_BVALID;
wire  OUT_r_BREADY;
wire [1 : 0] OUT_r_BRESP;
wire [0 : 0] OUT_r_BID;
wire [0 : 0] OUT_r_BUSER;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire CTRL_write_data_finish;
wire AESL_slave_start;
reg AESL_slave_start_lock = 0;
wire AESL_slave_write_start_in;
wire AESL_slave_write_start_finish;
reg AESL_slave_ready;
wire AESL_slave_output_done;
wire AESL_slave_done;
reg ready_rise = 0;
reg start_rise = 0;
reg slave_start_status = 0;
reg slave_done_status = 0;
reg ap_done_lock = 0;

wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .s_axi_CTRL_AWADDR(CTRL_AWADDR),
    .s_axi_CTRL_AWVALID(CTRL_AWVALID),
    .s_axi_CTRL_AWREADY(CTRL_AWREADY),
    .s_axi_CTRL_WVALID(CTRL_WVALID),
    .s_axi_CTRL_WREADY(CTRL_WREADY),
    .s_axi_CTRL_WDATA(CTRL_WDATA),
    .s_axi_CTRL_WSTRB(CTRL_WSTRB),
    .s_axi_CTRL_ARADDR(CTRL_ARADDR),
    .s_axi_CTRL_ARVALID(CTRL_ARVALID),
    .s_axi_CTRL_ARREADY(CTRL_ARREADY),
    .s_axi_CTRL_RVALID(CTRL_RVALID),
    .s_axi_CTRL_RREADY(CTRL_RREADY),
    .s_axi_CTRL_RDATA(CTRL_RDATA),
    .s_axi_CTRL_RRESP(CTRL_RRESP),
    .s_axi_CTRL_BVALID(CTRL_BVALID),
    .s_axi_CTRL_BREADY(CTRL_BREADY),
    .s_axi_CTRL_BRESP(CTRL_BRESP),
    .interrupt(CTRL_INTERRUPT),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .m_axi_IN1_AWVALID(IN1_AWVALID),
    .m_axi_IN1_AWREADY(IN1_AWREADY),
    .m_axi_IN1_AWADDR(IN1_AWADDR),
    .m_axi_IN1_AWID(IN1_AWID),
    .m_axi_IN1_AWLEN(IN1_AWLEN),
    .m_axi_IN1_AWSIZE(IN1_AWSIZE),
    .m_axi_IN1_AWBURST(IN1_AWBURST),
    .m_axi_IN1_AWLOCK(IN1_AWLOCK),
    .m_axi_IN1_AWCACHE(IN1_AWCACHE),
    .m_axi_IN1_AWPROT(IN1_AWPROT),
    .m_axi_IN1_AWQOS(IN1_AWQOS),
    .m_axi_IN1_AWREGION(IN1_AWREGION),
    .m_axi_IN1_AWUSER(IN1_AWUSER),
    .m_axi_IN1_WVALID(IN1_WVALID),
    .m_axi_IN1_WREADY(IN1_WREADY),
    .m_axi_IN1_WDATA(IN1_WDATA),
    .m_axi_IN1_WSTRB(IN1_WSTRB),
    .m_axi_IN1_WLAST(IN1_WLAST),
    .m_axi_IN1_WID(IN1_WID),
    .m_axi_IN1_WUSER(IN1_WUSER),
    .m_axi_IN1_ARVALID(IN1_ARVALID),
    .m_axi_IN1_ARREADY(IN1_ARREADY),
    .m_axi_IN1_ARADDR(IN1_ARADDR),
    .m_axi_IN1_ARID(IN1_ARID),
    .m_axi_IN1_ARLEN(IN1_ARLEN),
    .m_axi_IN1_ARSIZE(IN1_ARSIZE),
    .m_axi_IN1_ARBURST(IN1_ARBURST),
    .m_axi_IN1_ARLOCK(IN1_ARLOCK),
    .m_axi_IN1_ARCACHE(IN1_ARCACHE),
    .m_axi_IN1_ARPROT(IN1_ARPROT),
    .m_axi_IN1_ARQOS(IN1_ARQOS),
    .m_axi_IN1_ARREGION(IN1_ARREGION),
    .m_axi_IN1_ARUSER(IN1_ARUSER),
    .m_axi_IN1_RVALID(IN1_RVALID),
    .m_axi_IN1_RREADY(IN1_RREADY),
    .m_axi_IN1_RDATA(IN1_RDATA),
    .m_axi_IN1_RLAST(IN1_RLAST),
    .m_axi_IN1_RID(IN1_RID),
    .m_axi_IN1_RUSER(IN1_RUSER),
    .m_axi_IN1_RRESP(IN1_RRESP),
    .m_axi_IN1_BVALID(IN1_BVALID),
    .m_axi_IN1_BREADY(IN1_BREADY),
    .m_axi_IN1_BRESP(IN1_BRESP),
    .m_axi_IN1_BID(IN1_BID),
    .m_axi_IN1_BUSER(IN1_BUSER),
    .m_axi_IN2_AWVALID(IN2_AWVALID),
    .m_axi_IN2_AWREADY(IN2_AWREADY),
    .m_axi_IN2_AWADDR(IN2_AWADDR),
    .m_axi_IN2_AWID(IN2_AWID),
    .m_axi_IN2_AWLEN(IN2_AWLEN),
    .m_axi_IN2_AWSIZE(IN2_AWSIZE),
    .m_axi_IN2_AWBURST(IN2_AWBURST),
    .m_axi_IN2_AWLOCK(IN2_AWLOCK),
    .m_axi_IN2_AWCACHE(IN2_AWCACHE),
    .m_axi_IN2_AWPROT(IN2_AWPROT),
    .m_axi_IN2_AWQOS(IN2_AWQOS),
    .m_axi_IN2_AWREGION(IN2_AWREGION),
    .m_axi_IN2_AWUSER(IN2_AWUSER),
    .m_axi_IN2_WVALID(IN2_WVALID),
    .m_axi_IN2_WREADY(IN2_WREADY),
    .m_axi_IN2_WDATA(IN2_WDATA),
    .m_axi_IN2_WSTRB(IN2_WSTRB),
    .m_axi_IN2_WLAST(IN2_WLAST),
    .m_axi_IN2_WID(IN2_WID),
    .m_axi_IN2_WUSER(IN2_WUSER),
    .m_axi_IN2_ARVALID(IN2_ARVALID),
    .m_axi_IN2_ARREADY(IN2_ARREADY),
    .m_axi_IN2_ARADDR(IN2_ARADDR),
    .m_axi_IN2_ARID(IN2_ARID),
    .m_axi_IN2_ARLEN(IN2_ARLEN),
    .m_axi_IN2_ARSIZE(IN2_ARSIZE),
    .m_axi_IN2_ARBURST(IN2_ARBURST),
    .m_axi_IN2_ARLOCK(IN2_ARLOCK),
    .m_axi_IN2_ARCACHE(IN2_ARCACHE),
    .m_axi_IN2_ARPROT(IN2_ARPROT),
    .m_axi_IN2_ARQOS(IN2_ARQOS),
    .m_axi_IN2_ARREGION(IN2_ARREGION),
    .m_axi_IN2_ARUSER(IN2_ARUSER),
    .m_axi_IN2_RVALID(IN2_RVALID),
    .m_axi_IN2_RREADY(IN2_RREADY),
    .m_axi_IN2_RDATA(IN2_RDATA),
    .m_axi_IN2_RLAST(IN2_RLAST),
    .m_axi_IN2_RID(IN2_RID),
    .m_axi_IN2_RUSER(IN2_RUSER),
    .m_axi_IN2_RRESP(IN2_RRESP),
    .m_axi_IN2_BVALID(IN2_BVALID),
    .m_axi_IN2_BREADY(IN2_BREADY),
    .m_axi_IN2_BRESP(IN2_BRESP),
    .m_axi_IN2_BID(IN2_BID),
    .m_axi_IN2_BUSER(IN2_BUSER),
    .m_axi_OUT_r_AWVALID(OUT_r_AWVALID),
    .m_axi_OUT_r_AWREADY(OUT_r_AWREADY),
    .m_axi_OUT_r_AWADDR(OUT_r_AWADDR),
    .m_axi_OUT_r_AWID(OUT_r_AWID),
    .m_axi_OUT_r_AWLEN(OUT_r_AWLEN),
    .m_axi_OUT_r_AWSIZE(OUT_r_AWSIZE),
    .m_axi_OUT_r_AWBURST(OUT_r_AWBURST),
    .m_axi_OUT_r_AWLOCK(OUT_r_AWLOCK),
    .m_axi_OUT_r_AWCACHE(OUT_r_AWCACHE),
    .m_axi_OUT_r_AWPROT(OUT_r_AWPROT),
    .m_axi_OUT_r_AWQOS(OUT_r_AWQOS),
    .m_axi_OUT_r_AWREGION(OUT_r_AWREGION),
    .m_axi_OUT_r_AWUSER(OUT_r_AWUSER),
    .m_axi_OUT_r_WVALID(OUT_r_WVALID),
    .m_axi_OUT_r_WREADY(OUT_r_WREADY),
    .m_axi_OUT_r_WDATA(OUT_r_WDATA),
    .m_axi_OUT_r_WSTRB(OUT_r_WSTRB),
    .m_axi_OUT_r_WLAST(OUT_r_WLAST),
    .m_axi_OUT_r_WID(OUT_r_WID),
    .m_axi_OUT_r_WUSER(OUT_r_WUSER),
    .m_axi_OUT_r_ARVALID(OUT_r_ARVALID),
    .m_axi_OUT_r_ARREADY(OUT_r_ARREADY),
    .m_axi_OUT_r_ARADDR(OUT_r_ARADDR),
    .m_axi_OUT_r_ARID(OUT_r_ARID),
    .m_axi_OUT_r_ARLEN(OUT_r_ARLEN),
    .m_axi_OUT_r_ARSIZE(OUT_r_ARSIZE),
    .m_axi_OUT_r_ARBURST(OUT_r_ARBURST),
    .m_axi_OUT_r_ARLOCK(OUT_r_ARLOCK),
    .m_axi_OUT_r_ARCACHE(OUT_r_ARCACHE),
    .m_axi_OUT_r_ARPROT(OUT_r_ARPROT),
    .m_axi_OUT_r_ARQOS(OUT_r_ARQOS),
    .m_axi_OUT_r_ARREGION(OUT_r_ARREGION),
    .m_axi_OUT_r_ARUSER(OUT_r_ARUSER),
    .m_axi_OUT_r_RVALID(OUT_r_RVALID),
    .m_axi_OUT_r_RREADY(OUT_r_RREADY),
    .m_axi_OUT_r_RDATA(OUT_r_RDATA),
    .m_axi_OUT_r_RLAST(OUT_r_RLAST),
    .m_axi_OUT_r_RID(OUT_r_RID),
    .m_axi_OUT_r_RUSER(OUT_r_RUSER),
    .m_axi_OUT_r_RRESP(OUT_r_RRESP),
    .m_axi_OUT_r_BVALID(OUT_r_BVALID),
    .m_axi_OUT_r_BREADY(OUT_r_BREADY),
    .m_axi_OUT_r_BRESP(OUT_r_BRESP),
    .m_axi_OUT_r_BID(OUT_r_BID),
    .m_axi_OUT_r_BUSER(OUT_r_BUSER));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = AESL_reset;
assign ap_rst_n_n = ~AESL_reset;
assign AESL_reset = rst;
assign AESL_start = start;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
  assign AESL_slave_write_start_in = slave_start_status  & CTRL_write_data_finish;
  assign AESL_slave_start = AESL_slave_write_start_finish;
  assign AESL_done = slave_done_status ;

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        slave_start_status <= 1;
    end
    else begin
        if (AESL_start == 1 ) begin
            start_rise = 1;
        end
        if (start_rise == 1 && AESL_done == 1 ) begin
            slave_start_status <= 1;
        end
        if (AESL_slave_write_start_in == 1 && AESL_done == 0) begin 
            slave_start_status <= 0;
            start_rise = 0;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_ready <= 0;
        ready_rise = 0;
    end
    else begin
        if (AESL_ready == 1 ) begin
            ready_rise = 1;
        end
        if (ready_rise == 1 && AESL_done_delay == 1 ) begin
            AESL_slave_ready <= 1;
        end
        if (AESL_slave_ready == 1) begin 
            AESL_slave_ready <= 0;
            ready_rise = 0;
        end
    end
end

always @ (posedge AESL_clock)
begin
    if (AESL_done == 1) begin
        slave_done_status <= 0;
    end
    else if (AESL_slave_output_done == 1 ) begin
        slave_done_status <= 1;
    end
end







wire    AESL_axi_master_IN1_ready;
wire    AESL_axi_master_IN1_done;
wire [32 - 1:0] src1_V;
AESL_axi_master_IN1 AESL_AXI_MASTER_IN1(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_IN1_AWVALID (IN1_AWVALID),
    .TRAN_IN1_AWREADY (IN1_AWREADY),
    .TRAN_IN1_AWADDR (IN1_AWADDR),
    .TRAN_IN1_AWID (IN1_AWID),
    .TRAN_IN1_AWLEN (IN1_AWLEN),
    .TRAN_IN1_AWSIZE (IN1_AWSIZE),
    .TRAN_IN1_AWBURST (IN1_AWBURST),
    .TRAN_IN1_AWLOCK (IN1_AWLOCK),
    .TRAN_IN1_AWCACHE (IN1_AWCACHE),
    .TRAN_IN1_AWPROT (IN1_AWPROT),
    .TRAN_IN1_AWQOS (IN1_AWQOS),
    .TRAN_IN1_AWREGION (IN1_AWREGION),
    .TRAN_IN1_AWUSER (IN1_AWUSER),
    .TRAN_IN1_WVALID (IN1_WVALID),
    .TRAN_IN1_WREADY (IN1_WREADY),
    .TRAN_IN1_WDATA (IN1_WDATA),
    .TRAN_IN1_WSTRB (IN1_WSTRB),
    .TRAN_IN1_WLAST (IN1_WLAST),
    .TRAN_IN1_WID (IN1_WID),
    .TRAN_IN1_WUSER (IN1_WUSER),
    .TRAN_IN1_ARVALID (IN1_ARVALID),
    .TRAN_IN1_ARREADY (IN1_ARREADY),
    .TRAN_IN1_ARADDR (IN1_ARADDR),
    .TRAN_IN1_ARID (IN1_ARID),
    .TRAN_IN1_ARLEN (IN1_ARLEN),
    .TRAN_IN1_ARSIZE (IN1_ARSIZE),
    .TRAN_IN1_ARBURST (IN1_ARBURST),
    .TRAN_IN1_ARLOCK (IN1_ARLOCK),
    .TRAN_IN1_ARCACHE (IN1_ARCACHE),
    .TRAN_IN1_ARPROT (IN1_ARPROT),
    .TRAN_IN1_ARQOS (IN1_ARQOS),
    .TRAN_IN1_ARREGION (IN1_ARREGION),
    .TRAN_IN1_ARUSER (IN1_ARUSER),
    .TRAN_IN1_RVALID (IN1_RVALID),
    .TRAN_IN1_RREADY (IN1_RREADY),
    .TRAN_IN1_RDATA (IN1_RDATA),
    .TRAN_IN1_RLAST (IN1_RLAST),
    .TRAN_IN1_RID (IN1_RID),
    .TRAN_IN1_RUSER (IN1_RUSER),
    .TRAN_IN1_RRESP (IN1_RRESP),
    .TRAN_IN1_BVALID (IN1_BVALID),
    .TRAN_IN1_BREADY (IN1_BREADY),
    .TRAN_IN1_BRESP (IN1_BRESP),
    .TRAN_IN1_BID (IN1_BID),
    .TRAN_IN1_BUSER (IN1_BUSER),
    .TRAN_IN1_src1_V (src1_V),
    .ready (AESL_axi_master_IN1_ready),
    .done  (AESL_axi_master_IN1_done)
);
assign    AESL_axi_master_IN1_ready    =   ready;
assign    AESL_axi_master_IN1_done    =   AESL_done_delay;
wire    AESL_axi_master_IN2_ready;
wire    AESL_axi_master_IN2_done;
wire [32 - 1:0] src2_V;
AESL_axi_master_IN2 AESL_AXI_MASTER_IN2(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_IN2_AWVALID (IN2_AWVALID),
    .TRAN_IN2_AWREADY (IN2_AWREADY),
    .TRAN_IN2_AWADDR (IN2_AWADDR),
    .TRAN_IN2_AWID (IN2_AWID),
    .TRAN_IN2_AWLEN (IN2_AWLEN),
    .TRAN_IN2_AWSIZE (IN2_AWSIZE),
    .TRAN_IN2_AWBURST (IN2_AWBURST),
    .TRAN_IN2_AWLOCK (IN2_AWLOCK),
    .TRAN_IN2_AWCACHE (IN2_AWCACHE),
    .TRAN_IN2_AWPROT (IN2_AWPROT),
    .TRAN_IN2_AWQOS (IN2_AWQOS),
    .TRAN_IN2_AWREGION (IN2_AWREGION),
    .TRAN_IN2_AWUSER (IN2_AWUSER),
    .TRAN_IN2_WVALID (IN2_WVALID),
    .TRAN_IN2_WREADY (IN2_WREADY),
    .TRAN_IN2_WDATA (IN2_WDATA),
    .TRAN_IN2_WSTRB (IN2_WSTRB),
    .TRAN_IN2_WLAST (IN2_WLAST),
    .TRAN_IN2_WID (IN2_WID),
    .TRAN_IN2_WUSER (IN2_WUSER),
    .TRAN_IN2_ARVALID (IN2_ARVALID),
    .TRAN_IN2_ARREADY (IN2_ARREADY),
    .TRAN_IN2_ARADDR (IN2_ARADDR),
    .TRAN_IN2_ARID (IN2_ARID),
    .TRAN_IN2_ARLEN (IN2_ARLEN),
    .TRAN_IN2_ARSIZE (IN2_ARSIZE),
    .TRAN_IN2_ARBURST (IN2_ARBURST),
    .TRAN_IN2_ARLOCK (IN2_ARLOCK),
    .TRAN_IN2_ARCACHE (IN2_ARCACHE),
    .TRAN_IN2_ARPROT (IN2_ARPROT),
    .TRAN_IN2_ARQOS (IN2_ARQOS),
    .TRAN_IN2_ARREGION (IN2_ARREGION),
    .TRAN_IN2_ARUSER (IN2_ARUSER),
    .TRAN_IN2_RVALID (IN2_RVALID),
    .TRAN_IN2_RREADY (IN2_RREADY),
    .TRAN_IN2_RDATA (IN2_RDATA),
    .TRAN_IN2_RLAST (IN2_RLAST),
    .TRAN_IN2_RID (IN2_RID),
    .TRAN_IN2_RUSER (IN2_RUSER),
    .TRAN_IN2_RRESP (IN2_RRESP),
    .TRAN_IN2_BVALID (IN2_BVALID),
    .TRAN_IN2_BREADY (IN2_BREADY),
    .TRAN_IN2_BRESP (IN2_BRESP),
    .TRAN_IN2_BID (IN2_BID),
    .TRAN_IN2_BUSER (IN2_BUSER),
    .TRAN_IN2_src2_V (src2_V),
    .ready (AESL_axi_master_IN2_ready),
    .done  (AESL_axi_master_IN2_done)
);
assign    AESL_axi_master_IN2_ready    =   ready;
assign    AESL_axi_master_IN2_done    =   AESL_done_delay;
wire    AESL_axi_master_OUT_r_ready;
wire    AESL_axi_master_OUT_r_done;
wire [32 - 1:0] dest_V;
AESL_axi_master_OUT_r AESL_AXI_MASTER_OUT_r(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_OUT_r_AWVALID (OUT_r_AWVALID),
    .TRAN_OUT_r_AWREADY (OUT_r_AWREADY),
    .TRAN_OUT_r_AWADDR (OUT_r_AWADDR),
    .TRAN_OUT_r_AWID (OUT_r_AWID),
    .TRAN_OUT_r_AWLEN (OUT_r_AWLEN),
    .TRAN_OUT_r_AWSIZE (OUT_r_AWSIZE),
    .TRAN_OUT_r_AWBURST (OUT_r_AWBURST),
    .TRAN_OUT_r_AWLOCK (OUT_r_AWLOCK),
    .TRAN_OUT_r_AWCACHE (OUT_r_AWCACHE),
    .TRAN_OUT_r_AWPROT (OUT_r_AWPROT),
    .TRAN_OUT_r_AWQOS (OUT_r_AWQOS),
    .TRAN_OUT_r_AWREGION (OUT_r_AWREGION),
    .TRAN_OUT_r_AWUSER (OUT_r_AWUSER),
    .TRAN_OUT_r_WVALID (OUT_r_WVALID),
    .TRAN_OUT_r_WREADY (OUT_r_WREADY),
    .TRAN_OUT_r_WDATA (OUT_r_WDATA),
    .TRAN_OUT_r_WSTRB (OUT_r_WSTRB),
    .TRAN_OUT_r_WLAST (OUT_r_WLAST),
    .TRAN_OUT_r_WID (OUT_r_WID),
    .TRAN_OUT_r_WUSER (OUT_r_WUSER),
    .TRAN_OUT_r_ARVALID (OUT_r_ARVALID),
    .TRAN_OUT_r_ARREADY (OUT_r_ARREADY),
    .TRAN_OUT_r_ARADDR (OUT_r_ARADDR),
    .TRAN_OUT_r_ARID (OUT_r_ARID),
    .TRAN_OUT_r_ARLEN (OUT_r_ARLEN),
    .TRAN_OUT_r_ARSIZE (OUT_r_ARSIZE),
    .TRAN_OUT_r_ARBURST (OUT_r_ARBURST),
    .TRAN_OUT_r_ARLOCK (OUT_r_ARLOCK),
    .TRAN_OUT_r_ARCACHE (OUT_r_ARCACHE),
    .TRAN_OUT_r_ARPROT (OUT_r_ARPROT),
    .TRAN_OUT_r_ARQOS (OUT_r_ARQOS),
    .TRAN_OUT_r_ARREGION (OUT_r_ARREGION),
    .TRAN_OUT_r_ARUSER (OUT_r_ARUSER),
    .TRAN_OUT_r_RVALID (OUT_r_RVALID),
    .TRAN_OUT_r_RREADY (OUT_r_RREADY),
    .TRAN_OUT_r_RDATA (OUT_r_RDATA),
    .TRAN_OUT_r_RLAST (OUT_r_RLAST),
    .TRAN_OUT_r_RID (OUT_r_RID),
    .TRAN_OUT_r_RUSER (OUT_r_RUSER),
    .TRAN_OUT_r_RRESP (OUT_r_RRESP),
    .TRAN_OUT_r_BVALID (OUT_r_BVALID),
    .TRAN_OUT_r_BREADY (OUT_r_BREADY),
    .TRAN_OUT_r_BRESP (OUT_r_BRESP),
    .TRAN_OUT_r_BID (OUT_r_BID),
    .TRAN_OUT_r_BUSER (OUT_r_BUSER),
    .TRAN_OUT_r_dest_V (dest_V),
    .ready (AESL_axi_master_OUT_r_ready),
    .done  (AESL_axi_master_OUT_r_done)
);
assign    AESL_axi_master_OUT_r_ready    =   ready;
assign    AESL_axi_master_OUT_r_done    =   AESL_done_delay;

AESL_axi_slave_CTRL AESL_AXI_SLAVE_CTRL(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_CTRL_AWADDR (CTRL_AWADDR),
    .TRAN_s_axi_CTRL_AWVALID (CTRL_AWVALID),
    .TRAN_s_axi_CTRL_AWREADY (CTRL_AWREADY),
    .TRAN_s_axi_CTRL_WVALID (CTRL_WVALID),
    .TRAN_s_axi_CTRL_WREADY (CTRL_WREADY),
    .TRAN_s_axi_CTRL_WDATA (CTRL_WDATA),
    .TRAN_s_axi_CTRL_WSTRB (CTRL_WSTRB),
    .TRAN_s_axi_CTRL_ARADDR (CTRL_ARADDR),
    .TRAN_s_axi_CTRL_ARVALID (CTRL_ARVALID),
    .TRAN_s_axi_CTRL_ARREADY (CTRL_ARREADY),
    .TRAN_s_axi_CTRL_RVALID (CTRL_RVALID),
    .TRAN_s_axi_CTRL_RREADY (CTRL_RREADY),
    .TRAN_s_axi_CTRL_RDATA (CTRL_RDATA),
    .TRAN_s_axi_CTRL_RRESP (CTRL_RRESP),
    .TRAN_s_axi_CTRL_BVALID (CTRL_BVALID),
    .TRAN_s_axi_CTRL_BREADY (CTRL_BREADY),
    .TRAN_s_axi_CTRL_BRESP (CTRL_BRESP),
    .TRAN_CTRL_interrupt (CTRL_INTERRUPT),
    .TRAN_src1_V (src1_V),
    .TRAN_src2_V (src2_V),
    .TRAN_dest_V (dest_V),
    .TRAN_CTRL_write_data_finish(CTRL_write_data_finish),
    .TRAN_CTRL_ready_out (AESL_ready),
    .TRAN_CTRL_ready_in (AESL_slave_ready),
    .TRAN_CTRL_done_out (AESL_slave_output_done),
    .TRAN_CTRL_idle_out (AESL_idle),
    .TRAN_CTRL_write_start_in     (AESL_slave_write_start_in),
    .TRAN_CTRL_write_start_finish (AESL_slave_write_start_finish),
    .TRAN_CTRL_transaction_done_in (AESL_done_delay),
    .TRAN_CTRL_start_in  (AESL_slave_start)
);

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 1);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (~AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_IN1;
reg [31:0] size_IN1;
reg [31:0] size_IN1_backup;
reg end_IN2;
reg [31:0] size_IN2;
reg [31:0] size_IN2_backup;
reg end_src1_V;
reg [31:0] size_src1_V;
reg [31:0] size_src1_V_backup;
reg end_src2_V;
reg [31:0] size_src2_V;
reg [31:0] size_src2_V_backup;
reg end_dest_V;
reg [31:0] size_dest_V;
reg [31:0] size_dest_V_backup;
reg end_length_r;
reg [31:0] size_length_r;
reg [31:0] size_length_r_backup;
reg end_OUT_r;
reg [31:0] size_OUT_r;
reg [31:0] size_OUT_r_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    rst = 1;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 1);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt >= AUTOTB_TRANSACTION_NUM) begin
            // keep pushing garbage in
            #0 start = 1;
        end
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end

reg dump_tvout_finish_OUT_r;

initial begin : dump_tvout_runtime_sign_OUT_r
    integer fp;
    dump_tvout_finish_OUT_r = 0;
    fp = $fopen(`AUTOTB_TVOUT_OUT_r_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_r_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_OUT_r_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_r_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_OUT_r = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    clk_cnt <= clk_cnt + 1;
    AESL_ready_p1 <= AESL_ready;
    AESL_start_p1 <= AESL_start;
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
event report_progress;

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = finish_timestamp[i] - start_timestamp[i]+1;
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

endmodule
