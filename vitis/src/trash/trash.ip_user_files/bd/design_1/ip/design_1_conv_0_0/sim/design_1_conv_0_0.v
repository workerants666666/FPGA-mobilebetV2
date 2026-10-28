// (c) Copyright 1995-2026 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:conv:0.0
// IP Revision: 0

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_conv_0_0 (
  s_axi_CTRL_AWADDR,
  s_axi_CTRL_AWVALID,
  s_axi_CTRL_AWREADY,
  s_axi_CTRL_WDATA,
  s_axi_CTRL_WSTRB,
  s_axi_CTRL_WVALID,
  s_axi_CTRL_WREADY,
  s_axi_CTRL_BRESP,
  s_axi_CTRL_BVALID,
  s_axi_CTRL_BREADY,
  s_axi_CTRL_ARADDR,
  s_axi_CTRL_ARVALID,
  s_axi_CTRL_ARREADY,
  s_axi_CTRL_RDATA,
  s_axi_CTRL_RRESP,
  s_axi_CTRL_RVALID,
  s_axi_CTRL_RREADY,
  ap_clk,
  ap_rst_n,
  interrupt,
  m_axi_IN1_AWADDR,
  m_axi_IN1_AWLEN,
  m_axi_IN1_AWSIZE,
  m_axi_IN1_AWBURST,
  m_axi_IN1_AWLOCK,
  m_axi_IN1_AWREGION,
  m_axi_IN1_AWCACHE,
  m_axi_IN1_AWPROT,
  m_axi_IN1_AWQOS,
  m_axi_IN1_AWVALID,
  m_axi_IN1_AWREADY,
  m_axi_IN1_WDATA,
  m_axi_IN1_WSTRB,
  m_axi_IN1_WLAST,
  m_axi_IN1_WVALID,
  m_axi_IN1_WREADY,
  m_axi_IN1_BRESP,
  m_axi_IN1_BVALID,
  m_axi_IN1_BREADY,
  m_axi_IN1_ARADDR,
  m_axi_IN1_ARLEN,
  m_axi_IN1_ARSIZE,
  m_axi_IN1_ARBURST,
  m_axi_IN1_ARLOCK,
  m_axi_IN1_ARREGION,
  m_axi_IN1_ARCACHE,
  m_axi_IN1_ARPROT,
  m_axi_IN1_ARQOS,
  m_axi_IN1_ARVALID,
  m_axi_IN1_ARREADY,
  m_axi_IN1_RDATA,
  m_axi_IN1_RRESP,
  m_axi_IN1_RLAST,
  m_axi_IN1_RVALID,
  m_axi_IN1_RREADY,
  m_axi_IN2_AWADDR,
  m_axi_IN2_AWLEN,
  m_axi_IN2_AWSIZE,
  m_axi_IN2_AWBURST,
  m_axi_IN2_AWLOCK,
  m_axi_IN2_AWREGION,
  m_axi_IN2_AWCACHE,
  m_axi_IN2_AWPROT,
  m_axi_IN2_AWQOS,
  m_axi_IN2_AWVALID,
  m_axi_IN2_AWREADY,
  m_axi_IN2_WDATA,
  m_axi_IN2_WSTRB,
  m_axi_IN2_WLAST,
  m_axi_IN2_WVALID,
  m_axi_IN2_WREADY,
  m_axi_IN2_BRESP,
  m_axi_IN2_BVALID,
  m_axi_IN2_BREADY,
  m_axi_IN2_ARADDR,
  m_axi_IN2_ARLEN,
  m_axi_IN2_ARSIZE,
  m_axi_IN2_ARBURST,
  m_axi_IN2_ARLOCK,
  m_axi_IN2_ARREGION,
  m_axi_IN2_ARCACHE,
  m_axi_IN2_ARPROT,
  m_axi_IN2_ARQOS,
  m_axi_IN2_ARVALID,
  m_axi_IN2_ARREADY,
  m_axi_IN2_RDATA,
  m_axi_IN2_RRESP,
  m_axi_IN2_RLAST,
  m_axi_IN2_RVALID,
  m_axi_IN2_RREADY,
  m_axi_IN3_AWADDR,
  m_axi_IN3_AWLEN,
  m_axi_IN3_AWSIZE,
  m_axi_IN3_AWBURST,
  m_axi_IN3_AWLOCK,
  m_axi_IN3_AWREGION,
  m_axi_IN3_AWCACHE,
  m_axi_IN3_AWPROT,
  m_axi_IN3_AWQOS,
  m_axi_IN3_AWVALID,
  m_axi_IN3_AWREADY,
  m_axi_IN3_WDATA,
  m_axi_IN3_WSTRB,
  m_axi_IN3_WLAST,
  m_axi_IN3_WVALID,
  m_axi_IN3_WREADY,
  m_axi_IN3_BRESP,
  m_axi_IN3_BVALID,
  m_axi_IN3_BREADY,
  m_axi_IN3_ARADDR,
  m_axi_IN3_ARLEN,
  m_axi_IN3_ARSIZE,
  m_axi_IN3_ARBURST,
  m_axi_IN3_ARLOCK,
  m_axi_IN3_ARREGION,
  m_axi_IN3_ARCACHE,
  m_axi_IN3_ARPROT,
  m_axi_IN3_ARQOS,
  m_axi_IN3_ARVALID,
  m_axi_IN3_ARREADY,
  m_axi_IN3_RDATA,
  m_axi_IN3_RRESP,
  m_axi_IN3_RLAST,
  m_axi_IN3_RVALID,
  m_axi_IN3_RREADY,
  m_axi_W_AWADDR,
  m_axi_W_AWLEN,
  m_axi_W_AWSIZE,
  m_axi_W_AWBURST,
  m_axi_W_AWLOCK,
  m_axi_W_AWREGION,
  m_axi_W_AWCACHE,
  m_axi_W_AWPROT,
  m_axi_W_AWQOS,
  m_axi_W_AWVALID,
  m_axi_W_AWREADY,
  m_axi_W_WDATA,
  m_axi_W_WSTRB,
  m_axi_W_WLAST,
  m_axi_W_WVALID,
  m_axi_W_WREADY,
  m_axi_W_BRESP,
  m_axi_W_BVALID,
  m_axi_W_BREADY,
  m_axi_W_ARADDR,
  m_axi_W_ARLEN,
  m_axi_W_ARSIZE,
  m_axi_W_ARBURST,
  m_axi_W_ARLOCK,
  m_axi_W_ARREGION,
  m_axi_W_ARCACHE,
  m_axi_W_ARPROT,
  m_axi_W_ARQOS,
  m_axi_W_ARVALID,
  m_axi_W_ARREADY,
  m_axi_W_RDATA,
  m_axi_W_RRESP,
  m_axi_W_RLAST,
  m_axi_W_RVALID,
  m_axi_W_RREADY,
  m_axi_OUT_r_AWADDR,
  m_axi_OUT_r_AWLEN,
  m_axi_OUT_r_AWSIZE,
  m_axi_OUT_r_AWBURST,
  m_axi_OUT_r_AWLOCK,
  m_axi_OUT_r_AWREGION,
  m_axi_OUT_r_AWCACHE,
  m_axi_OUT_r_AWPROT,
  m_axi_OUT_r_AWQOS,
  m_axi_OUT_r_AWVALID,
  m_axi_OUT_r_AWREADY,
  m_axi_OUT_r_WDATA,
  m_axi_OUT_r_WSTRB,
  m_axi_OUT_r_WLAST,
  m_axi_OUT_r_WVALID,
  m_axi_OUT_r_WREADY,
  m_axi_OUT_r_BRESP,
  m_axi_OUT_r_BVALID,
  m_axi_OUT_r_BREADY,
  m_axi_OUT_r_ARADDR,
  m_axi_OUT_r_ARLEN,
  m_axi_OUT_r_ARSIZE,
  m_axi_OUT_r_ARBURST,
  m_axi_OUT_r_ARLOCK,
  m_axi_OUT_r_ARREGION,
  m_axi_OUT_r_ARCACHE,
  m_axi_OUT_r_ARPROT,
  m_axi_OUT_r_ARQOS,
  m_axi_OUT_r_ARVALID,
  m_axi_OUT_r_ARREADY,
  m_axi_OUT_r_RDATA,
  m_axi_OUT_r_RRESP,
  m_axi_OUT_r_RLAST,
  m_axi_OUT_r_RVALID,
  m_axi_OUT_r_RREADY
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWADDR" *)
input wire [5 : 0] s_axi_CTRL_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWVALID" *)
input wire s_axi_CTRL_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWREADY" *)
output wire s_axi_CTRL_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WDATA" *)
input wire [31 : 0] s_axi_CTRL_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WSTRB" *)
input wire [3 : 0] s_axi_CTRL_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WVALID" *)
input wire s_axi_CTRL_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL WREADY" *)
output wire s_axi_CTRL_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BRESP" *)
output wire [1 : 0] s_axi_CTRL_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BVALID" *)
output wire s_axi_CTRL_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL BREADY" *)
input wire s_axi_CTRL_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARADDR" *)
input wire [5 : 0] s_axi_CTRL_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARVALID" *)
input wire s_axi_CTRL_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL ARREADY" *)
output wire s_axi_CTRL_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RDATA" *)
output wire [31 : 0] s_axi_CTRL_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RRESP" *)
output wire [1 : 0] s_axi_CTRL_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RVALID" *)
output wire s_axi_CTRL_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_CTRL, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 128571426, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_TH\
READS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RREADY" *)
input wire s_axi_CTRL_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_CTRL:m_axi_IN1:m_axi_IN2:m_axi_IN3:m_axi_W:m_axi_OUT_r, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 128571426, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 AWADDR" *)
output wire [31 : 0] m_axi_IN1_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 AWLEN" *)
output wire [7 : 0] m_axi_IN1_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 AWSIZE" *)
output wire [2 : 0] m_axi_IN1_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 AWBURST" *)
output wire [1 : 0] m_axi_IN1_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 AWLOCK" *)
output wire [1 : 0] m_axi_IN1_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 AWREGION" *)
output wire [3 : 0] m_axi_IN1_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 AWCACHE" *)
output wire [3 : 0] m_axi_IN1_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 AWPROT" *)
output wire [2 : 0] m_axi_IN1_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 AWQOS" *)
output wire [3 : 0] m_axi_IN1_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 AWVALID" *)
output wire m_axi_IN1_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 AWREADY" *)
input wire m_axi_IN1_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 WDATA" *)
output wire [31 : 0] m_axi_IN1_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 WSTRB" *)
output wire [3 : 0] m_axi_IN1_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 WLAST" *)
output wire m_axi_IN1_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 WVALID" *)
output wire m_axi_IN1_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 WREADY" *)
input wire m_axi_IN1_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 BRESP" *)
input wire [1 : 0] m_axi_IN1_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 BVALID" *)
input wire m_axi_IN1_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 BREADY" *)
output wire m_axi_IN1_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 ARADDR" *)
output wire [31 : 0] m_axi_IN1_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 ARLEN" *)
output wire [7 : 0] m_axi_IN1_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 ARSIZE" *)
output wire [2 : 0] m_axi_IN1_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 ARBURST" *)
output wire [1 : 0] m_axi_IN1_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 ARLOCK" *)
output wire [1 : 0] m_axi_IN1_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 ARREGION" *)
output wire [3 : 0] m_axi_IN1_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 ARCACHE" *)
output wire [3 : 0] m_axi_IN1_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 ARPROT" *)
output wire [2 : 0] m_axi_IN1_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 ARQOS" *)
output wire [3 : 0] m_axi_IN1_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 ARVALID" *)
output wire m_axi_IN1_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 ARREADY" *)
input wire m_axi_IN1_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 RDATA" *)
input wire [31 : 0] m_axi_IN1_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 RRESP" *)
input wire [1 : 0] m_axi_IN1_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 RLAST" *)
input wire m_axi_IN1_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 RVALID" *)
input wire m_axi_IN1_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_IN1, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 64, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 128571426, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOMAIN d\
esign_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN1 RREADY" *)
output wire m_axi_IN1_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 AWADDR" *)
output wire [31 : 0] m_axi_IN2_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 AWLEN" *)
output wire [7 : 0] m_axi_IN2_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 AWSIZE" *)
output wire [2 : 0] m_axi_IN2_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 AWBURST" *)
output wire [1 : 0] m_axi_IN2_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 AWLOCK" *)
output wire [1 : 0] m_axi_IN2_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 AWREGION" *)
output wire [3 : 0] m_axi_IN2_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 AWCACHE" *)
output wire [3 : 0] m_axi_IN2_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 AWPROT" *)
output wire [2 : 0] m_axi_IN2_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 AWQOS" *)
output wire [3 : 0] m_axi_IN2_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 AWVALID" *)
output wire m_axi_IN2_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 AWREADY" *)
input wire m_axi_IN2_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 WDATA" *)
output wire [31 : 0] m_axi_IN2_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 WSTRB" *)
output wire [3 : 0] m_axi_IN2_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 WLAST" *)
output wire m_axi_IN2_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 WVALID" *)
output wire m_axi_IN2_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 WREADY" *)
input wire m_axi_IN2_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 BRESP" *)
input wire [1 : 0] m_axi_IN2_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 BVALID" *)
input wire m_axi_IN2_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 BREADY" *)
output wire m_axi_IN2_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 ARADDR" *)
output wire [31 : 0] m_axi_IN2_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 ARLEN" *)
output wire [7 : 0] m_axi_IN2_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 ARSIZE" *)
output wire [2 : 0] m_axi_IN2_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 ARBURST" *)
output wire [1 : 0] m_axi_IN2_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 ARLOCK" *)
output wire [1 : 0] m_axi_IN2_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 ARREGION" *)
output wire [3 : 0] m_axi_IN2_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 ARCACHE" *)
output wire [3 : 0] m_axi_IN2_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 ARPROT" *)
output wire [2 : 0] m_axi_IN2_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 ARQOS" *)
output wire [3 : 0] m_axi_IN2_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 ARVALID" *)
output wire m_axi_IN2_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 ARREADY" *)
input wire m_axi_IN2_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 RDATA" *)
input wire [31 : 0] m_axi_IN2_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 RRESP" *)
input wire [1 : 0] m_axi_IN2_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 RLAST" *)
input wire m_axi_IN2_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 RVALID" *)
input wire m_axi_IN2_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_IN2, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 64, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 128571426, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOMAIN d\
esign_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN2 RREADY" *)
output wire m_axi_IN2_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 AWADDR" *)
output wire [31 : 0] m_axi_IN3_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 AWLEN" *)
output wire [7 : 0] m_axi_IN3_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 AWSIZE" *)
output wire [2 : 0] m_axi_IN3_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 AWBURST" *)
output wire [1 : 0] m_axi_IN3_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 AWLOCK" *)
output wire [1 : 0] m_axi_IN3_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 AWREGION" *)
output wire [3 : 0] m_axi_IN3_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 AWCACHE" *)
output wire [3 : 0] m_axi_IN3_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 AWPROT" *)
output wire [2 : 0] m_axi_IN3_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 AWQOS" *)
output wire [3 : 0] m_axi_IN3_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 AWVALID" *)
output wire m_axi_IN3_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 AWREADY" *)
input wire m_axi_IN3_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 WDATA" *)
output wire [31 : 0] m_axi_IN3_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 WSTRB" *)
output wire [3 : 0] m_axi_IN3_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 WLAST" *)
output wire m_axi_IN3_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 WVALID" *)
output wire m_axi_IN3_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 WREADY" *)
input wire m_axi_IN3_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 BRESP" *)
input wire [1 : 0] m_axi_IN3_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 BVALID" *)
input wire m_axi_IN3_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 BREADY" *)
output wire m_axi_IN3_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 ARADDR" *)
output wire [31 : 0] m_axi_IN3_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 ARLEN" *)
output wire [7 : 0] m_axi_IN3_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 ARSIZE" *)
output wire [2 : 0] m_axi_IN3_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 ARBURST" *)
output wire [1 : 0] m_axi_IN3_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 ARLOCK" *)
output wire [1 : 0] m_axi_IN3_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 ARREGION" *)
output wire [3 : 0] m_axi_IN3_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 ARCACHE" *)
output wire [3 : 0] m_axi_IN3_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 ARPROT" *)
output wire [2 : 0] m_axi_IN3_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 ARQOS" *)
output wire [3 : 0] m_axi_IN3_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 ARVALID" *)
output wire m_axi_IN3_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 ARREADY" *)
input wire m_axi_IN3_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 RDATA" *)
input wire [31 : 0] m_axi_IN3_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 RRESP" *)
input wire [1 : 0] m_axi_IN3_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 RLAST" *)
input wire m_axi_IN3_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 RVALID" *)
input wire m_axi_IN3_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_IN3, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 64, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 128571426, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOMAIN d\
esign_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_IN3 RREADY" *)
output wire m_axi_IN3_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W AWADDR" *)
output wire [31 : 0] m_axi_W_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W AWLEN" *)
output wire [7 : 0] m_axi_W_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W AWSIZE" *)
output wire [2 : 0] m_axi_W_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W AWBURST" *)
output wire [1 : 0] m_axi_W_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W AWLOCK" *)
output wire [1 : 0] m_axi_W_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W AWREGION" *)
output wire [3 : 0] m_axi_W_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W AWCACHE" *)
output wire [3 : 0] m_axi_W_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W AWPROT" *)
output wire [2 : 0] m_axi_W_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W AWQOS" *)
output wire [3 : 0] m_axi_W_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W AWVALID" *)
output wire m_axi_W_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W AWREADY" *)
input wire m_axi_W_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W WDATA" *)
output wire [31 : 0] m_axi_W_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W WSTRB" *)
output wire [3 : 0] m_axi_W_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W WLAST" *)
output wire m_axi_W_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W WVALID" *)
output wire m_axi_W_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W WREADY" *)
input wire m_axi_W_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W BRESP" *)
input wire [1 : 0] m_axi_W_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W BVALID" *)
input wire m_axi_W_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W BREADY" *)
output wire m_axi_W_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W ARADDR" *)
output wire [31 : 0] m_axi_W_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W ARLEN" *)
output wire [7 : 0] m_axi_W_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W ARSIZE" *)
output wire [2 : 0] m_axi_W_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W ARBURST" *)
output wire [1 : 0] m_axi_W_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W ARLOCK" *)
output wire [1 : 0] m_axi_W_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W ARREGION" *)
output wire [3 : 0] m_axi_W_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W ARCACHE" *)
output wire [3 : 0] m_axi_W_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W ARPROT" *)
output wire [2 : 0] m_axi_W_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W ARQOS" *)
output wire [3 : 0] m_axi_W_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W ARVALID" *)
output wire m_axi_W_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W ARREADY" *)
input wire m_axi_W_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W RDATA" *)
input wire [31 : 0] m_axi_W_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W RRESP" *)
input wire [1 : 0] m_axi_W_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W RLAST" *)
input wire m_axi_W_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W RVALID" *)
input wire m_axi_W_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_W, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 128571426, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOMAIN des\
ign_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_W RREADY" *)
output wire m_axi_W_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r AWADDR" *)
output wire [31 : 0] m_axi_OUT_r_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r AWLEN" *)
output wire [7 : 0] m_axi_OUT_r_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r AWSIZE" *)
output wire [2 : 0] m_axi_OUT_r_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r AWBURST" *)
output wire [1 : 0] m_axi_OUT_r_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r AWLOCK" *)
output wire [1 : 0] m_axi_OUT_r_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r AWREGION" *)
output wire [3 : 0] m_axi_OUT_r_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r AWCACHE" *)
output wire [3 : 0] m_axi_OUT_r_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r AWPROT" *)
output wire [2 : 0] m_axi_OUT_r_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r AWQOS" *)
output wire [3 : 0] m_axi_OUT_r_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r AWVALID" *)
output wire m_axi_OUT_r_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r AWREADY" *)
input wire m_axi_OUT_r_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r WDATA" *)
output wire [63 : 0] m_axi_OUT_r_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r WSTRB" *)
output wire [7 : 0] m_axi_OUT_r_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r WLAST" *)
output wire m_axi_OUT_r_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r WVALID" *)
output wire m_axi_OUT_r_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r WREADY" *)
input wire m_axi_OUT_r_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r BRESP" *)
input wire [1 : 0] m_axi_OUT_r_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r BVALID" *)
input wire m_axi_OUT_r_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r BREADY" *)
output wire m_axi_OUT_r_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r ARADDR" *)
output wire [31 : 0] m_axi_OUT_r_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r ARLEN" *)
output wire [7 : 0] m_axi_OUT_r_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r ARSIZE" *)
output wire [2 : 0] m_axi_OUT_r_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r ARBURST" *)
output wire [1 : 0] m_axi_OUT_r_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r ARLOCK" *)
output wire [1 : 0] m_axi_OUT_r_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r ARREGION" *)
output wire [3 : 0] m_axi_OUT_r_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r ARCACHE" *)
output wire [3 : 0] m_axi_OUT_r_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r ARPROT" *)
output wire [2 : 0] m_axi_OUT_r_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r ARQOS" *)
output wire [3 : 0] m_axi_OUT_r_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r ARVALID" *)
output wire m_axi_OUT_r_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r ARREADY" *)
input wire m_axi_OUT_r_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r RDATA" *)
input wire [63 : 0] m_axi_OUT_r_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r RRESP" *)
input wire [1 : 0] m_axi_OUT_r_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r RLAST" *)
input wire m_axi_OUT_r_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r RVALID" *)
input wire m_axi_OUT_r_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_OUT_r, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 32, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 64, FREQ_HZ 128571426, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOMAIN\
 design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_OUT_r RREADY" *)
output wire m_axi_OUT_r_RREADY;

  conv #(
    .C_S_AXI_CTRL_ADDR_WIDTH(6),
    .C_S_AXI_CTRL_DATA_WIDTH(32),
    .C_M_AXI_IN1_ID_WIDTH(1),
    .C_M_AXI_IN1_ADDR_WIDTH(32),
    .C_M_AXI_IN1_DATA_WIDTH(32),
    .C_M_AXI_IN1_AWUSER_WIDTH(1),
    .C_M_AXI_IN1_ARUSER_WIDTH(1),
    .C_M_AXI_IN1_WUSER_WIDTH(1),
    .C_M_AXI_IN1_RUSER_WIDTH(1),
    .C_M_AXI_IN1_BUSER_WIDTH(1),
    .C_M_AXI_IN1_USER_VALUE('H00000000),
    .C_M_AXI_IN1_PROT_VALUE('B000),
    .C_M_AXI_IN1_CACHE_VALUE('B0011),
    .C_M_AXI_IN2_ID_WIDTH(1),
    .C_M_AXI_IN2_ADDR_WIDTH(32),
    .C_M_AXI_IN2_DATA_WIDTH(32),
    .C_M_AXI_IN2_AWUSER_WIDTH(1),
    .C_M_AXI_IN2_ARUSER_WIDTH(1),
    .C_M_AXI_IN2_WUSER_WIDTH(1),
    .C_M_AXI_IN2_RUSER_WIDTH(1),
    .C_M_AXI_IN2_BUSER_WIDTH(1),
    .C_M_AXI_IN2_USER_VALUE('H00000000),
    .C_M_AXI_IN2_PROT_VALUE('B000),
    .C_M_AXI_IN2_CACHE_VALUE('B0011),
    .C_M_AXI_IN3_ID_WIDTH(1),
    .C_M_AXI_IN3_ADDR_WIDTH(32),
    .C_M_AXI_IN3_DATA_WIDTH(32),
    .C_M_AXI_IN3_AWUSER_WIDTH(1),
    .C_M_AXI_IN3_ARUSER_WIDTH(1),
    .C_M_AXI_IN3_WUSER_WIDTH(1),
    .C_M_AXI_IN3_RUSER_WIDTH(1),
    .C_M_AXI_IN3_BUSER_WIDTH(1),
    .C_M_AXI_IN3_USER_VALUE('H00000000),
    .C_M_AXI_IN3_PROT_VALUE('B000),
    .C_M_AXI_IN3_CACHE_VALUE('B0011),
    .C_M_AXI_W_ID_WIDTH(1),
    .C_M_AXI_W_ADDR_WIDTH(32),
    .C_M_AXI_W_DATA_WIDTH(32),
    .C_M_AXI_W_AWUSER_WIDTH(1),
    .C_M_AXI_W_ARUSER_WIDTH(1),
    .C_M_AXI_W_WUSER_WIDTH(1),
    .C_M_AXI_W_RUSER_WIDTH(1),
    .C_M_AXI_W_BUSER_WIDTH(1),
    .C_M_AXI_W_USER_VALUE('H00000000),
    .C_M_AXI_W_PROT_VALUE('B000),
    .C_M_AXI_W_CACHE_VALUE('B0011),
    .C_M_AXI_OUT_R_ID_WIDTH(1),
    .C_M_AXI_OUT_R_ADDR_WIDTH(32),
    .C_M_AXI_OUT_R_DATA_WIDTH(64),
    .C_M_AXI_OUT_R_AWUSER_WIDTH(1),
    .C_M_AXI_OUT_R_ARUSER_WIDTH(1),
    .C_M_AXI_OUT_R_WUSER_WIDTH(1),
    .C_M_AXI_OUT_R_RUSER_WIDTH(1),
    .C_M_AXI_OUT_R_BUSER_WIDTH(1),
    .C_M_AXI_OUT_R_USER_VALUE('H00000000),
    .C_M_AXI_OUT_R_PROT_VALUE('B000),
    .C_M_AXI_OUT_R_CACHE_VALUE('B0011)
  ) inst (
    .s_axi_CTRL_AWADDR(s_axi_CTRL_AWADDR),
    .s_axi_CTRL_AWVALID(s_axi_CTRL_AWVALID),
    .s_axi_CTRL_AWREADY(s_axi_CTRL_AWREADY),
    .s_axi_CTRL_WDATA(s_axi_CTRL_WDATA),
    .s_axi_CTRL_WSTRB(s_axi_CTRL_WSTRB),
    .s_axi_CTRL_WVALID(s_axi_CTRL_WVALID),
    .s_axi_CTRL_WREADY(s_axi_CTRL_WREADY),
    .s_axi_CTRL_BRESP(s_axi_CTRL_BRESP),
    .s_axi_CTRL_BVALID(s_axi_CTRL_BVALID),
    .s_axi_CTRL_BREADY(s_axi_CTRL_BREADY),
    .s_axi_CTRL_ARADDR(s_axi_CTRL_ARADDR),
    .s_axi_CTRL_ARVALID(s_axi_CTRL_ARVALID),
    .s_axi_CTRL_ARREADY(s_axi_CTRL_ARREADY),
    .s_axi_CTRL_RDATA(s_axi_CTRL_RDATA),
    .s_axi_CTRL_RRESP(s_axi_CTRL_RRESP),
    .s_axi_CTRL_RVALID(s_axi_CTRL_RVALID),
    .s_axi_CTRL_RREADY(s_axi_CTRL_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .m_axi_IN1_AWID(),
    .m_axi_IN1_AWADDR(m_axi_IN1_AWADDR),
    .m_axi_IN1_AWLEN(m_axi_IN1_AWLEN),
    .m_axi_IN1_AWSIZE(m_axi_IN1_AWSIZE),
    .m_axi_IN1_AWBURST(m_axi_IN1_AWBURST),
    .m_axi_IN1_AWLOCK(m_axi_IN1_AWLOCK),
    .m_axi_IN1_AWREGION(m_axi_IN1_AWREGION),
    .m_axi_IN1_AWCACHE(m_axi_IN1_AWCACHE),
    .m_axi_IN1_AWPROT(m_axi_IN1_AWPROT),
    .m_axi_IN1_AWQOS(m_axi_IN1_AWQOS),
    .m_axi_IN1_AWUSER(),
    .m_axi_IN1_AWVALID(m_axi_IN1_AWVALID),
    .m_axi_IN1_AWREADY(m_axi_IN1_AWREADY),
    .m_axi_IN1_WID(),
    .m_axi_IN1_WDATA(m_axi_IN1_WDATA),
    .m_axi_IN1_WSTRB(m_axi_IN1_WSTRB),
    .m_axi_IN1_WLAST(m_axi_IN1_WLAST),
    .m_axi_IN1_WUSER(),
    .m_axi_IN1_WVALID(m_axi_IN1_WVALID),
    .m_axi_IN1_WREADY(m_axi_IN1_WREADY),
    .m_axi_IN1_BID(1'B0),
    .m_axi_IN1_BRESP(m_axi_IN1_BRESP),
    .m_axi_IN1_BUSER(1'B0),
    .m_axi_IN1_BVALID(m_axi_IN1_BVALID),
    .m_axi_IN1_BREADY(m_axi_IN1_BREADY),
    .m_axi_IN1_ARID(),
    .m_axi_IN1_ARADDR(m_axi_IN1_ARADDR),
    .m_axi_IN1_ARLEN(m_axi_IN1_ARLEN),
    .m_axi_IN1_ARSIZE(m_axi_IN1_ARSIZE),
    .m_axi_IN1_ARBURST(m_axi_IN1_ARBURST),
    .m_axi_IN1_ARLOCK(m_axi_IN1_ARLOCK),
    .m_axi_IN1_ARREGION(m_axi_IN1_ARREGION),
    .m_axi_IN1_ARCACHE(m_axi_IN1_ARCACHE),
    .m_axi_IN1_ARPROT(m_axi_IN1_ARPROT),
    .m_axi_IN1_ARQOS(m_axi_IN1_ARQOS),
    .m_axi_IN1_ARUSER(),
    .m_axi_IN1_ARVALID(m_axi_IN1_ARVALID),
    .m_axi_IN1_ARREADY(m_axi_IN1_ARREADY),
    .m_axi_IN1_RID(1'B0),
    .m_axi_IN1_RDATA(m_axi_IN1_RDATA),
    .m_axi_IN1_RRESP(m_axi_IN1_RRESP),
    .m_axi_IN1_RLAST(m_axi_IN1_RLAST),
    .m_axi_IN1_RUSER(1'B0),
    .m_axi_IN1_RVALID(m_axi_IN1_RVALID),
    .m_axi_IN1_RREADY(m_axi_IN1_RREADY),
    .m_axi_IN2_AWID(),
    .m_axi_IN2_AWADDR(m_axi_IN2_AWADDR),
    .m_axi_IN2_AWLEN(m_axi_IN2_AWLEN),
    .m_axi_IN2_AWSIZE(m_axi_IN2_AWSIZE),
    .m_axi_IN2_AWBURST(m_axi_IN2_AWBURST),
    .m_axi_IN2_AWLOCK(m_axi_IN2_AWLOCK),
    .m_axi_IN2_AWREGION(m_axi_IN2_AWREGION),
    .m_axi_IN2_AWCACHE(m_axi_IN2_AWCACHE),
    .m_axi_IN2_AWPROT(m_axi_IN2_AWPROT),
    .m_axi_IN2_AWQOS(m_axi_IN2_AWQOS),
    .m_axi_IN2_AWUSER(),
    .m_axi_IN2_AWVALID(m_axi_IN2_AWVALID),
    .m_axi_IN2_AWREADY(m_axi_IN2_AWREADY),
    .m_axi_IN2_WID(),
    .m_axi_IN2_WDATA(m_axi_IN2_WDATA),
    .m_axi_IN2_WSTRB(m_axi_IN2_WSTRB),
    .m_axi_IN2_WLAST(m_axi_IN2_WLAST),
    .m_axi_IN2_WUSER(),
    .m_axi_IN2_WVALID(m_axi_IN2_WVALID),
    .m_axi_IN2_WREADY(m_axi_IN2_WREADY),
    .m_axi_IN2_BID(1'B0),
    .m_axi_IN2_BRESP(m_axi_IN2_BRESP),
    .m_axi_IN2_BUSER(1'B0),
    .m_axi_IN2_BVALID(m_axi_IN2_BVALID),
    .m_axi_IN2_BREADY(m_axi_IN2_BREADY),
    .m_axi_IN2_ARID(),
    .m_axi_IN2_ARADDR(m_axi_IN2_ARADDR),
    .m_axi_IN2_ARLEN(m_axi_IN2_ARLEN),
    .m_axi_IN2_ARSIZE(m_axi_IN2_ARSIZE),
    .m_axi_IN2_ARBURST(m_axi_IN2_ARBURST),
    .m_axi_IN2_ARLOCK(m_axi_IN2_ARLOCK),
    .m_axi_IN2_ARREGION(m_axi_IN2_ARREGION),
    .m_axi_IN2_ARCACHE(m_axi_IN2_ARCACHE),
    .m_axi_IN2_ARPROT(m_axi_IN2_ARPROT),
    .m_axi_IN2_ARQOS(m_axi_IN2_ARQOS),
    .m_axi_IN2_ARUSER(),
    .m_axi_IN2_ARVALID(m_axi_IN2_ARVALID),
    .m_axi_IN2_ARREADY(m_axi_IN2_ARREADY),
    .m_axi_IN2_RID(1'B0),
    .m_axi_IN2_RDATA(m_axi_IN2_RDATA),
    .m_axi_IN2_RRESP(m_axi_IN2_RRESP),
    .m_axi_IN2_RLAST(m_axi_IN2_RLAST),
    .m_axi_IN2_RUSER(1'B0),
    .m_axi_IN2_RVALID(m_axi_IN2_RVALID),
    .m_axi_IN2_RREADY(m_axi_IN2_RREADY),
    .m_axi_IN3_AWID(),
    .m_axi_IN3_AWADDR(m_axi_IN3_AWADDR),
    .m_axi_IN3_AWLEN(m_axi_IN3_AWLEN),
    .m_axi_IN3_AWSIZE(m_axi_IN3_AWSIZE),
    .m_axi_IN3_AWBURST(m_axi_IN3_AWBURST),
    .m_axi_IN3_AWLOCK(m_axi_IN3_AWLOCK),
    .m_axi_IN3_AWREGION(m_axi_IN3_AWREGION),
    .m_axi_IN3_AWCACHE(m_axi_IN3_AWCACHE),
    .m_axi_IN3_AWPROT(m_axi_IN3_AWPROT),
    .m_axi_IN3_AWQOS(m_axi_IN3_AWQOS),
    .m_axi_IN3_AWUSER(),
    .m_axi_IN3_AWVALID(m_axi_IN3_AWVALID),
    .m_axi_IN3_AWREADY(m_axi_IN3_AWREADY),
    .m_axi_IN3_WID(),
    .m_axi_IN3_WDATA(m_axi_IN3_WDATA),
    .m_axi_IN3_WSTRB(m_axi_IN3_WSTRB),
    .m_axi_IN3_WLAST(m_axi_IN3_WLAST),
    .m_axi_IN3_WUSER(),
    .m_axi_IN3_WVALID(m_axi_IN3_WVALID),
    .m_axi_IN3_WREADY(m_axi_IN3_WREADY),
    .m_axi_IN3_BID(1'B0),
    .m_axi_IN3_BRESP(m_axi_IN3_BRESP),
    .m_axi_IN3_BUSER(1'B0),
    .m_axi_IN3_BVALID(m_axi_IN3_BVALID),
    .m_axi_IN3_BREADY(m_axi_IN3_BREADY),
    .m_axi_IN3_ARID(),
    .m_axi_IN3_ARADDR(m_axi_IN3_ARADDR),
    .m_axi_IN3_ARLEN(m_axi_IN3_ARLEN),
    .m_axi_IN3_ARSIZE(m_axi_IN3_ARSIZE),
    .m_axi_IN3_ARBURST(m_axi_IN3_ARBURST),
    .m_axi_IN3_ARLOCK(m_axi_IN3_ARLOCK),
    .m_axi_IN3_ARREGION(m_axi_IN3_ARREGION),
    .m_axi_IN3_ARCACHE(m_axi_IN3_ARCACHE),
    .m_axi_IN3_ARPROT(m_axi_IN3_ARPROT),
    .m_axi_IN3_ARQOS(m_axi_IN3_ARQOS),
    .m_axi_IN3_ARUSER(),
    .m_axi_IN3_ARVALID(m_axi_IN3_ARVALID),
    .m_axi_IN3_ARREADY(m_axi_IN3_ARREADY),
    .m_axi_IN3_RID(1'B0),
    .m_axi_IN3_RDATA(m_axi_IN3_RDATA),
    .m_axi_IN3_RRESP(m_axi_IN3_RRESP),
    .m_axi_IN3_RLAST(m_axi_IN3_RLAST),
    .m_axi_IN3_RUSER(1'B0),
    .m_axi_IN3_RVALID(m_axi_IN3_RVALID),
    .m_axi_IN3_RREADY(m_axi_IN3_RREADY),
    .m_axi_W_AWID(),
    .m_axi_W_AWADDR(m_axi_W_AWADDR),
    .m_axi_W_AWLEN(m_axi_W_AWLEN),
    .m_axi_W_AWSIZE(m_axi_W_AWSIZE),
    .m_axi_W_AWBURST(m_axi_W_AWBURST),
    .m_axi_W_AWLOCK(m_axi_W_AWLOCK),
    .m_axi_W_AWREGION(m_axi_W_AWREGION),
    .m_axi_W_AWCACHE(m_axi_W_AWCACHE),
    .m_axi_W_AWPROT(m_axi_W_AWPROT),
    .m_axi_W_AWQOS(m_axi_W_AWQOS),
    .m_axi_W_AWUSER(),
    .m_axi_W_AWVALID(m_axi_W_AWVALID),
    .m_axi_W_AWREADY(m_axi_W_AWREADY),
    .m_axi_W_WID(),
    .m_axi_W_WDATA(m_axi_W_WDATA),
    .m_axi_W_WSTRB(m_axi_W_WSTRB),
    .m_axi_W_WLAST(m_axi_W_WLAST),
    .m_axi_W_WUSER(),
    .m_axi_W_WVALID(m_axi_W_WVALID),
    .m_axi_W_WREADY(m_axi_W_WREADY),
    .m_axi_W_BID(1'B0),
    .m_axi_W_BRESP(m_axi_W_BRESP),
    .m_axi_W_BUSER(1'B0),
    .m_axi_W_BVALID(m_axi_W_BVALID),
    .m_axi_W_BREADY(m_axi_W_BREADY),
    .m_axi_W_ARID(),
    .m_axi_W_ARADDR(m_axi_W_ARADDR),
    .m_axi_W_ARLEN(m_axi_W_ARLEN),
    .m_axi_W_ARSIZE(m_axi_W_ARSIZE),
    .m_axi_W_ARBURST(m_axi_W_ARBURST),
    .m_axi_W_ARLOCK(m_axi_W_ARLOCK),
    .m_axi_W_ARREGION(m_axi_W_ARREGION),
    .m_axi_W_ARCACHE(m_axi_W_ARCACHE),
    .m_axi_W_ARPROT(m_axi_W_ARPROT),
    .m_axi_W_ARQOS(m_axi_W_ARQOS),
    .m_axi_W_ARUSER(),
    .m_axi_W_ARVALID(m_axi_W_ARVALID),
    .m_axi_W_ARREADY(m_axi_W_ARREADY),
    .m_axi_W_RID(1'B0),
    .m_axi_W_RDATA(m_axi_W_RDATA),
    .m_axi_W_RRESP(m_axi_W_RRESP),
    .m_axi_W_RLAST(m_axi_W_RLAST),
    .m_axi_W_RUSER(1'B0),
    .m_axi_W_RVALID(m_axi_W_RVALID),
    .m_axi_W_RREADY(m_axi_W_RREADY),
    .m_axi_OUT_r_AWID(),
    .m_axi_OUT_r_AWADDR(m_axi_OUT_r_AWADDR),
    .m_axi_OUT_r_AWLEN(m_axi_OUT_r_AWLEN),
    .m_axi_OUT_r_AWSIZE(m_axi_OUT_r_AWSIZE),
    .m_axi_OUT_r_AWBURST(m_axi_OUT_r_AWBURST),
    .m_axi_OUT_r_AWLOCK(m_axi_OUT_r_AWLOCK),
    .m_axi_OUT_r_AWREGION(m_axi_OUT_r_AWREGION),
    .m_axi_OUT_r_AWCACHE(m_axi_OUT_r_AWCACHE),
    .m_axi_OUT_r_AWPROT(m_axi_OUT_r_AWPROT),
    .m_axi_OUT_r_AWQOS(m_axi_OUT_r_AWQOS),
    .m_axi_OUT_r_AWUSER(),
    .m_axi_OUT_r_AWVALID(m_axi_OUT_r_AWVALID),
    .m_axi_OUT_r_AWREADY(m_axi_OUT_r_AWREADY),
    .m_axi_OUT_r_WID(),
    .m_axi_OUT_r_WDATA(m_axi_OUT_r_WDATA),
    .m_axi_OUT_r_WSTRB(m_axi_OUT_r_WSTRB),
    .m_axi_OUT_r_WLAST(m_axi_OUT_r_WLAST),
    .m_axi_OUT_r_WUSER(),
    .m_axi_OUT_r_WVALID(m_axi_OUT_r_WVALID),
    .m_axi_OUT_r_WREADY(m_axi_OUT_r_WREADY),
    .m_axi_OUT_r_BID(1'B0),
    .m_axi_OUT_r_BRESP(m_axi_OUT_r_BRESP),
    .m_axi_OUT_r_BUSER(1'B0),
    .m_axi_OUT_r_BVALID(m_axi_OUT_r_BVALID),
    .m_axi_OUT_r_BREADY(m_axi_OUT_r_BREADY),
    .m_axi_OUT_r_ARID(),
    .m_axi_OUT_r_ARADDR(m_axi_OUT_r_ARADDR),
    .m_axi_OUT_r_ARLEN(m_axi_OUT_r_ARLEN),
    .m_axi_OUT_r_ARSIZE(m_axi_OUT_r_ARSIZE),
    .m_axi_OUT_r_ARBURST(m_axi_OUT_r_ARBURST),
    .m_axi_OUT_r_ARLOCK(m_axi_OUT_r_ARLOCK),
    .m_axi_OUT_r_ARREGION(m_axi_OUT_r_ARREGION),
    .m_axi_OUT_r_ARCACHE(m_axi_OUT_r_ARCACHE),
    .m_axi_OUT_r_ARPROT(m_axi_OUT_r_ARPROT),
    .m_axi_OUT_r_ARQOS(m_axi_OUT_r_ARQOS),
    .m_axi_OUT_r_ARUSER(),
    .m_axi_OUT_r_ARVALID(m_axi_OUT_r_ARVALID),
    .m_axi_OUT_r_ARREADY(m_axi_OUT_r_ARREADY),
    .m_axi_OUT_r_RID(1'B0),
    .m_axi_OUT_r_RDATA(m_axi_OUT_r_RDATA),
    .m_axi_OUT_r_RRESP(m_axi_OUT_r_RRESP),
    .m_axi_OUT_r_RLAST(m_axi_OUT_r_RLAST),
    .m_axi_OUT_r_RUSER(1'B0),
    .m_axi_OUT_r_RVALID(m_axi_OUT_r_RVALID),
    .m_axi_OUT_r_RREADY(m_axi_OUT_r_RREADY)
  );
endmodule
