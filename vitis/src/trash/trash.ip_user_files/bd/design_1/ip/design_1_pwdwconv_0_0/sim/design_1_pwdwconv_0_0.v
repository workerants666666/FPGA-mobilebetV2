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


// IP VLNV: xilinx.com:hls:pwdwconv:0.0
// IP Revision: 0

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_pwdwconv_0_0 (
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
  m_axi_PBUS1_AWADDR,
  m_axi_PBUS1_AWLEN,
  m_axi_PBUS1_AWSIZE,
  m_axi_PBUS1_AWBURST,
  m_axi_PBUS1_AWLOCK,
  m_axi_PBUS1_AWREGION,
  m_axi_PBUS1_AWCACHE,
  m_axi_PBUS1_AWPROT,
  m_axi_PBUS1_AWQOS,
  m_axi_PBUS1_AWVALID,
  m_axi_PBUS1_AWREADY,
  m_axi_PBUS1_WDATA,
  m_axi_PBUS1_WSTRB,
  m_axi_PBUS1_WLAST,
  m_axi_PBUS1_WVALID,
  m_axi_PBUS1_WREADY,
  m_axi_PBUS1_BRESP,
  m_axi_PBUS1_BVALID,
  m_axi_PBUS1_BREADY,
  m_axi_PBUS1_ARADDR,
  m_axi_PBUS1_ARLEN,
  m_axi_PBUS1_ARSIZE,
  m_axi_PBUS1_ARBURST,
  m_axi_PBUS1_ARLOCK,
  m_axi_PBUS1_ARREGION,
  m_axi_PBUS1_ARCACHE,
  m_axi_PBUS1_ARPROT,
  m_axi_PBUS1_ARQOS,
  m_axi_PBUS1_ARVALID,
  m_axi_PBUS1_ARREADY,
  m_axi_PBUS1_RDATA,
  m_axi_PBUS1_RRESP,
  m_axi_PBUS1_RLAST,
  m_axi_PBUS1_RVALID,
  m_axi_PBUS1_RREADY,
  m_axi_PBUS2_AWADDR,
  m_axi_PBUS2_AWLEN,
  m_axi_PBUS2_AWSIZE,
  m_axi_PBUS2_AWBURST,
  m_axi_PBUS2_AWLOCK,
  m_axi_PBUS2_AWREGION,
  m_axi_PBUS2_AWCACHE,
  m_axi_PBUS2_AWPROT,
  m_axi_PBUS2_AWQOS,
  m_axi_PBUS2_AWVALID,
  m_axi_PBUS2_AWREADY,
  m_axi_PBUS2_WDATA,
  m_axi_PBUS2_WSTRB,
  m_axi_PBUS2_WLAST,
  m_axi_PBUS2_WVALID,
  m_axi_PBUS2_WREADY,
  m_axi_PBUS2_BRESP,
  m_axi_PBUS2_BVALID,
  m_axi_PBUS2_BREADY,
  m_axi_PBUS2_ARADDR,
  m_axi_PBUS2_ARLEN,
  m_axi_PBUS2_ARSIZE,
  m_axi_PBUS2_ARBURST,
  m_axi_PBUS2_ARLOCK,
  m_axi_PBUS2_ARREGION,
  m_axi_PBUS2_ARCACHE,
  m_axi_PBUS2_ARPROT,
  m_axi_PBUS2_ARQOS,
  m_axi_PBUS2_ARVALID,
  m_axi_PBUS2_ARREADY,
  m_axi_PBUS2_RDATA,
  m_axi_PBUS2_RRESP,
  m_axi_PBUS2_RLAST,
  m_axi_PBUS2_RVALID,
  m_axi_PBUS2_RREADY,
  m_axi_PBUS3_AWADDR,
  m_axi_PBUS3_AWLEN,
  m_axi_PBUS3_AWSIZE,
  m_axi_PBUS3_AWBURST,
  m_axi_PBUS3_AWLOCK,
  m_axi_PBUS3_AWREGION,
  m_axi_PBUS3_AWCACHE,
  m_axi_PBUS3_AWPROT,
  m_axi_PBUS3_AWQOS,
  m_axi_PBUS3_AWVALID,
  m_axi_PBUS3_AWREADY,
  m_axi_PBUS3_WDATA,
  m_axi_PBUS3_WSTRB,
  m_axi_PBUS3_WLAST,
  m_axi_PBUS3_WVALID,
  m_axi_PBUS3_WREADY,
  m_axi_PBUS3_BRESP,
  m_axi_PBUS3_BVALID,
  m_axi_PBUS3_BREADY,
  m_axi_PBUS3_ARADDR,
  m_axi_PBUS3_ARLEN,
  m_axi_PBUS3_ARSIZE,
  m_axi_PBUS3_ARBURST,
  m_axi_PBUS3_ARLOCK,
  m_axi_PBUS3_ARREGION,
  m_axi_PBUS3_ARCACHE,
  m_axi_PBUS3_ARPROT,
  m_axi_PBUS3_ARQOS,
  m_axi_PBUS3_ARVALID,
  m_axi_PBUS3_ARREADY,
  m_axi_PBUS3_RDATA,
  m_axi_PBUS3_RRESP,
  m_axi_PBUS3_RLAST,
  m_axi_PBUS3_RVALID,
  m_axi_PBUS3_RREADY,
  m_axi_PBUS4_AWADDR,
  m_axi_PBUS4_AWLEN,
  m_axi_PBUS4_AWSIZE,
  m_axi_PBUS4_AWBURST,
  m_axi_PBUS4_AWLOCK,
  m_axi_PBUS4_AWREGION,
  m_axi_PBUS4_AWCACHE,
  m_axi_PBUS4_AWPROT,
  m_axi_PBUS4_AWQOS,
  m_axi_PBUS4_AWVALID,
  m_axi_PBUS4_AWREADY,
  m_axi_PBUS4_WDATA,
  m_axi_PBUS4_WSTRB,
  m_axi_PBUS4_WLAST,
  m_axi_PBUS4_WVALID,
  m_axi_PBUS4_WREADY,
  m_axi_PBUS4_BRESP,
  m_axi_PBUS4_BVALID,
  m_axi_PBUS4_BREADY,
  m_axi_PBUS4_ARADDR,
  m_axi_PBUS4_ARLEN,
  m_axi_PBUS4_ARSIZE,
  m_axi_PBUS4_ARBURST,
  m_axi_PBUS4_ARLOCK,
  m_axi_PBUS4_ARREGION,
  m_axi_PBUS4_ARCACHE,
  m_axi_PBUS4_ARPROT,
  m_axi_PBUS4_ARQOS,
  m_axi_PBUS4_ARVALID,
  m_axi_PBUS4_ARREADY,
  m_axi_PBUS4_RDATA,
  m_axi_PBUS4_RRESP,
  m_axi_PBUS4_RLAST,
  m_axi_PBUS4_RVALID,
  m_axi_PBUS4_RREADY,
  m_axi_SBUS1_AWADDR,
  m_axi_SBUS1_AWLEN,
  m_axi_SBUS1_AWSIZE,
  m_axi_SBUS1_AWBURST,
  m_axi_SBUS1_AWLOCK,
  m_axi_SBUS1_AWREGION,
  m_axi_SBUS1_AWCACHE,
  m_axi_SBUS1_AWPROT,
  m_axi_SBUS1_AWQOS,
  m_axi_SBUS1_AWVALID,
  m_axi_SBUS1_AWREADY,
  m_axi_SBUS1_WDATA,
  m_axi_SBUS1_WSTRB,
  m_axi_SBUS1_WLAST,
  m_axi_SBUS1_WVALID,
  m_axi_SBUS1_WREADY,
  m_axi_SBUS1_BRESP,
  m_axi_SBUS1_BVALID,
  m_axi_SBUS1_BREADY,
  m_axi_SBUS1_ARADDR,
  m_axi_SBUS1_ARLEN,
  m_axi_SBUS1_ARSIZE,
  m_axi_SBUS1_ARBURST,
  m_axi_SBUS1_ARLOCK,
  m_axi_SBUS1_ARREGION,
  m_axi_SBUS1_ARCACHE,
  m_axi_SBUS1_ARPROT,
  m_axi_SBUS1_ARQOS,
  m_axi_SBUS1_ARVALID,
  m_axi_SBUS1_ARREADY,
  m_axi_SBUS1_RDATA,
  m_axi_SBUS1_RRESP,
  m_axi_SBUS1_RLAST,
  m_axi_SBUS1_RVALID,
  m_axi_SBUS1_RREADY,
  m_axi_SBUS2_AWADDR,
  m_axi_SBUS2_AWLEN,
  m_axi_SBUS2_AWSIZE,
  m_axi_SBUS2_AWBURST,
  m_axi_SBUS2_AWLOCK,
  m_axi_SBUS2_AWREGION,
  m_axi_SBUS2_AWCACHE,
  m_axi_SBUS2_AWPROT,
  m_axi_SBUS2_AWQOS,
  m_axi_SBUS2_AWVALID,
  m_axi_SBUS2_AWREADY,
  m_axi_SBUS2_WDATA,
  m_axi_SBUS2_WSTRB,
  m_axi_SBUS2_WLAST,
  m_axi_SBUS2_WVALID,
  m_axi_SBUS2_WREADY,
  m_axi_SBUS2_BRESP,
  m_axi_SBUS2_BVALID,
  m_axi_SBUS2_BREADY,
  m_axi_SBUS2_ARADDR,
  m_axi_SBUS2_ARLEN,
  m_axi_SBUS2_ARSIZE,
  m_axi_SBUS2_ARBURST,
  m_axi_SBUS2_ARLOCK,
  m_axi_SBUS2_ARREGION,
  m_axi_SBUS2_ARCACHE,
  m_axi_SBUS2_ARPROT,
  m_axi_SBUS2_ARQOS,
  m_axi_SBUS2_ARVALID,
  m_axi_SBUS2_ARREADY,
  m_axi_SBUS2_RDATA,
  m_axi_SBUS2_RRESP,
  m_axi_SBUS2_RLAST,
  m_axi_SBUS2_RVALID,
  m_axi_SBUS2_RREADY
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL AWADDR" *)
input wire [6 : 0] s_axi_CTRL_AWADDR;
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
input wire [6 : 0] s_axi_CTRL_ARADDR;
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
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_CTRL, ADDR_WIDTH 7, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 128571426, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_TH\
READS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRL RREADY" *)
input wire s_axi_CTRL_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_CTRL:m_axi_PBUS1:m_axi_PBUS2:m_axi_PBUS3:m_axi_PBUS4:m_axi_SBUS1:m_axi_SBUS2, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 128571426, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 AWADDR" *)
output wire [31 : 0] m_axi_PBUS1_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 AWLEN" *)
output wire [7 : 0] m_axi_PBUS1_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 AWSIZE" *)
output wire [2 : 0] m_axi_PBUS1_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 AWBURST" *)
output wire [1 : 0] m_axi_PBUS1_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 AWLOCK" *)
output wire [1 : 0] m_axi_PBUS1_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 AWREGION" *)
output wire [3 : 0] m_axi_PBUS1_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 AWCACHE" *)
output wire [3 : 0] m_axi_PBUS1_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 AWPROT" *)
output wire [2 : 0] m_axi_PBUS1_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 AWQOS" *)
output wire [3 : 0] m_axi_PBUS1_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 AWVALID" *)
output wire m_axi_PBUS1_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 AWREADY" *)
input wire m_axi_PBUS1_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 WDATA" *)
output wire [63 : 0] m_axi_PBUS1_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 WSTRB" *)
output wire [7 : 0] m_axi_PBUS1_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 WLAST" *)
output wire m_axi_PBUS1_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 WVALID" *)
output wire m_axi_PBUS1_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 WREADY" *)
input wire m_axi_PBUS1_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 BRESP" *)
input wire [1 : 0] m_axi_PBUS1_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 BVALID" *)
input wire m_axi_PBUS1_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 BREADY" *)
output wire m_axi_PBUS1_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 ARADDR" *)
output wire [31 : 0] m_axi_PBUS1_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 ARLEN" *)
output wire [7 : 0] m_axi_PBUS1_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 ARSIZE" *)
output wire [2 : 0] m_axi_PBUS1_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 ARBURST" *)
output wire [1 : 0] m_axi_PBUS1_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 ARLOCK" *)
output wire [1 : 0] m_axi_PBUS1_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 ARREGION" *)
output wire [3 : 0] m_axi_PBUS1_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 ARCACHE" *)
output wire [3 : 0] m_axi_PBUS1_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 ARPROT" *)
output wire [2 : 0] m_axi_PBUS1_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 ARQOS" *)
output wire [3 : 0] m_axi_PBUS1_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 ARVALID" *)
output wire m_axi_PBUS1_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 ARREADY" *)
input wire m_axi_PBUS1_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 RDATA" *)
input wire [63 : 0] m_axi_PBUS1_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 RRESP" *)
input wire [1 : 0] m_axi_PBUS1_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 RLAST" *)
input wire m_axi_PBUS1_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 RVALID" *)
input wire m_axi_PBUS1_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_PBUS1, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 256, MAX_WRITE_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 64, FREQ_HZ 128571426, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOMAI\
N design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS1 RREADY" *)
output wire m_axi_PBUS1_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 AWADDR" *)
output wire [31 : 0] m_axi_PBUS2_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 AWLEN" *)
output wire [7 : 0] m_axi_PBUS2_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 AWSIZE" *)
output wire [2 : 0] m_axi_PBUS2_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 AWBURST" *)
output wire [1 : 0] m_axi_PBUS2_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 AWLOCK" *)
output wire [1 : 0] m_axi_PBUS2_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 AWREGION" *)
output wire [3 : 0] m_axi_PBUS2_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 AWCACHE" *)
output wire [3 : 0] m_axi_PBUS2_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 AWPROT" *)
output wire [2 : 0] m_axi_PBUS2_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 AWQOS" *)
output wire [3 : 0] m_axi_PBUS2_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 AWVALID" *)
output wire m_axi_PBUS2_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 AWREADY" *)
input wire m_axi_PBUS2_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 WDATA" *)
output wire [63 : 0] m_axi_PBUS2_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 WSTRB" *)
output wire [7 : 0] m_axi_PBUS2_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 WLAST" *)
output wire m_axi_PBUS2_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 WVALID" *)
output wire m_axi_PBUS2_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 WREADY" *)
input wire m_axi_PBUS2_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 BRESP" *)
input wire [1 : 0] m_axi_PBUS2_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 BVALID" *)
input wire m_axi_PBUS2_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 BREADY" *)
output wire m_axi_PBUS2_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 ARADDR" *)
output wire [31 : 0] m_axi_PBUS2_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 ARLEN" *)
output wire [7 : 0] m_axi_PBUS2_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 ARSIZE" *)
output wire [2 : 0] m_axi_PBUS2_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 ARBURST" *)
output wire [1 : 0] m_axi_PBUS2_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 ARLOCK" *)
output wire [1 : 0] m_axi_PBUS2_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 ARREGION" *)
output wire [3 : 0] m_axi_PBUS2_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 ARCACHE" *)
output wire [3 : 0] m_axi_PBUS2_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 ARPROT" *)
output wire [2 : 0] m_axi_PBUS2_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 ARQOS" *)
output wire [3 : 0] m_axi_PBUS2_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 ARVALID" *)
output wire m_axi_PBUS2_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 ARREADY" *)
input wire m_axi_PBUS2_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 RDATA" *)
input wire [63 : 0] m_axi_PBUS2_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 RRESP" *)
input wire [1 : 0] m_axi_PBUS2_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 RLAST" *)
input wire m_axi_PBUS2_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 RVALID" *)
input wire m_axi_PBUS2_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_PBUS2, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 256, MAX_WRITE_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 64, FREQ_HZ 128571426, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOMAI\
N design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS2 RREADY" *)
output wire m_axi_PBUS2_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 AWADDR" *)
output wire [31 : 0] m_axi_PBUS3_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 AWLEN" *)
output wire [7 : 0] m_axi_PBUS3_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 AWSIZE" *)
output wire [2 : 0] m_axi_PBUS3_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 AWBURST" *)
output wire [1 : 0] m_axi_PBUS3_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 AWLOCK" *)
output wire [1 : 0] m_axi_PBUS3_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 AWREGION" *)
output wire [3 : 0] m_axi_PBUS3_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 AWCACHE" *)
output wire [3 : 0] m_axi_PBUS3_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 AWPROT" *)
output wire [2 : 0] m_axi_PBUS3_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 AWQOS" *)
output wire [3 : 0] m_axi_PBUS3_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 AWVALID" *)
output wire m_axi_PBUS3_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 AWREADY" *)
input wire m_axi_PBUS3_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 WDATA" *)
output wire [63 : 0] m_axi_PBUS3_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 WSTRB" *)
output wire [7 : 0] m_axi_PBUS3_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 WLAST" *)
output wire m_axi_PBUS3_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 WVALID" *)
output wire m_axi_PBUS3_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 WREADY" *)
input wire m_axi_PBUS3_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 BRESP" *)
input wire [1 : 0] m_axi_PBUS3_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 BVALID" *)
input wire m_axi_PBUS3_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 BREADY" *)
output wire m_axi_PBUS3_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 ARADDR" *)
output wire [31 : 0] m_axi_PBUS3_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 ARLEN" *)
output wire [7 : 0] m_axi_PBUS3_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 ARSIZE" *)
output wire [2 : 0] m_axi_PBUS3_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 ARBURST" *)
output wire [1 : 0] m_axi_PBUS3_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 ARLOCK" *)
output wire [1 : 0] m_axi_PBUS3_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 ARREGION" *)
output wire [3 : 0] m_axi_PBUS3_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 ARCACHE" *)
output wire [3 : 0] m_axi_PBUS3_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 ARPROT" *)
output wire [2 : 0] m_axi_PBUS3_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 ARQOS" *)
output wire [3 : 0] m_axi_PBUS3_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 ARVALID" *)
output wire m_axi_PBUS3_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 ARREADY" *)
input wire m_axi_PBUS3_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 RDATA" *)
input wire [63 : 0] m_axi_PBUS3_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 RRESP" *)
input wire [1 : 0] m_axi_PBUS3_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 RLAST" *)
input wire m_axi_PBUS3_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 RVALID" *)
input wire m_axi_PBUS3_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_PBUS3, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 256, MAX_WRITE_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 64, FREQ_HZ 128571426, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOMAI\
N design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS3 RREADY" *)
output wire m_axi_PBUS3_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 AWADDR" *)
output wire [31 : 0] m_axi_PBUS4_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 AWLEN" *)
output wire [7 : 0] m_axi_PBUS4_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 AWSIZE" *)
output wire [2 : 0] m_axi_PBUS4_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 AWBURST" *)
output wire [1 : 0] m_axi_PBUS4_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 AWLOCK" *)
output wire [1 : 0] m_axi_PBUS4_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 AWREGION" *)
output wire [3 : 0] m_axi_PBUS4_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 AWCACHE" *)
output wire [3 : 0] m_axi_PBUS4_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 AWPROT" *)
output wire [2 : 0] m_axi_PBUS4_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 AWQOS" *)
output wire [3 : 0] m_axi_PBUS4_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 AWVALID" *)
output wire m_axi_PBUS4_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 AWREADY" *)
input wire m_axi_PBUS4_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 WDATA" *)
output wire [63 : 0] m_axi_PBUS4_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 WSTRB" *)
output wire [7 : 0] m_axi_PBUS4_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 WLAST" *)
output wire m_axi_PBUS4_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 WVALID" *)
output wire m_axi_PBUS4_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 WREADY" *)
input wire m_axi_PBUS4_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 BRESP" *)
input wire [1 : 0] m_axi_PBUS4_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 BVALID" *)
input wire m_axi_PBUS4_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 BREADY" *)
output wire m_axi_PBUS4_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 ARADDR" *)
output wire [31 : 0] m_axi_PBUS4_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 ARLEN" *)
output wire [7 : 0] m_axi_PBUS4_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 ARSIZE" *)
output wire [2 : 0] m_axi_PBUS4_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 ARBURST" *)
output wire [1 : 0] m_axi_PBUS4_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 ARLOCK" *)
output wire [1 : 0] m_axi_PBUS4_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 ARREGION" *)
output wire [3 : 0] m_axi_PBUS4_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 ARCACHE" *)
output wire [3 : 0] m_axi_PBUS4_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 ARPROT" *)
output wire [2 : 0] m_axi_PBUS4_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 ARQOS" *)
output wire [3 : 0] m_axi_PBUS4_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 ARVALID" *)
output wire m_axi_PBUS4_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 ARREADY" *)
input wire m_axi_PBUS4_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 RDATA" *)
input wire [63 : 0] m_axi_PBUS4_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 RRESP" *)
input wire [1 : 0] m_axi_PBUS4_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 RLAST" *)
input wire m_axi_PBUS4_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 RVALID" *)
input wire m_axi_PBUS4_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_PBUS4, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 256, MAX_WRITE_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 64, FREQ_HZ 128571426, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOMAI\
N design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_PBUS4 RREADY" *)
output wire m_axi_PBUS4_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 AWADDR" *)
output wire [31 : 0] m_axi_SBUS1_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 AWLEN" *)
output wire [7 : 0] m_axi_SBUS1_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 AWSIZE" *)
output wire [2 : 0] m_axi_SBUS1_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 AWBURST" *)
output wire [1 : 0] m_axi_SBUS1_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 AWLOCK" *)
output wire [1 : 0] m_axi_SBUS1_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 AWREGION" *)
output wire [3 : 0] m_axi_SBUS1_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 AWCACHE" *)
output wire [3 : 0] m_axi_SBUS1_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 AWPROT" *)
output wire [2 : 0] m_axi_SBUS1_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 AWQOS" *)
output wire [3 : 0] m_axi_SBUS1_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 AWVALID" *)
output wire m_axi_SBUS1_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 AWREADY" *)
input wire m_axi_SBUS1_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 WDATA" *)
output wire [31 : 0] m_axi_SBUS1_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 WSTRB" *)
output wire [3 : 0] m_axi_SBUS1_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 WLAST" *)
output wire m_axi_SBUS1_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 WVALID" *)
output wire m_axi_SBUS1_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 WREADY" *)
input wire m_axi_SBUS1_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 BRESP" *)
input wire [1 : 0] m_axi_SBUS1_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 BVALID" *)
input wire m_axi_SBUS1_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 BREADY" *)
output wire m_axi_SBUS1_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 ARADDR" *)
output wire [31 : 0] m_axi_SBUS1_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 ARLEN" *)
output wire [7 : 0] m_axi_SBUS1_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 ARSIZE" *)
output wire [2 : 0] m_axi_SBUS1_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 ARBURST" *)
output wire [1 : 0] m_axi_SBUS1_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 ARLOCK" *)
output wire [1 : 0] m_axi_SBUS1_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 ARREGION" *)
output wire [3 : 0] m_axi_SBUS1_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 ARCACHE" *)
output wire [3 : 0] m_axi_SBUS1_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 ARPROT" *)
output wire [2 : 0] m_axi_SBUS1_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 ARQOS" *)
output wire [3 : 0] m_axi_SBUS1_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 ARVALID" *)
output wire m_axi_SBUS1_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 ARREADY" *)
input wire m_axi_SBUS1_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 RDATA" *)
input wire [31 : 0] m_axi_SBUS1_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 RRESP" *)
input wire [1 : 0] m_axi_SBUS1_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 RLAST" *)
input wire m_axi_SBUS1_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 RVALID" *)
input wire m_axi_SBUS1_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_SBUS1, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 256, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 128571426, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOMAIN\
 design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS1 RREADY" *)
output wire m_axi_SBUS1_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 AWADDR" *)
output wire [31 : 0] m_axi_SBUS2_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 AWLEN" *)
output wire [7 : 0] m_axi_SBUS2_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 AWSIZE" *)
output wire [2 : 0] m_axi_SBUS2_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 AWBURST" *)
output wire [1 : 0] m_axi_SBUS2_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 AWLOCK" *)
output wire [1 : 0] m_axi_SBUS2_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 AWREGION" *)
output wire [3 : 0] m_axi_SBUS2_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 AWCACHE" *)
output wire [3 : 0] m_axi_SBUS2_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 AWPROT" *)
output wire [2 : 0] m_axi_SBUS2_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 AWQOS" *)
output wire [3 : 0] m_axi_SBUS2_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 AWVALID" *)
output wire m_axi_SBUS2_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 AWREADY" *)
input wire m_axi_SBUS2_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 WDATA" *)
output wire [31 : 0] m_axi_SBUS2_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 WSTRB" *)
output wire [3 : 0] m_axi_SBUS2_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 WLAST" *)
output wire m_axi_SBUS2_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 WVALID" *)
output wire m_axi_SBUS2_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 WREADY" *)
input wire m_axi_SBUS2_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 BRESP" *)
input wire [1 : 0] m_axi_SBUS2_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 BVALID" *)
input wire m_axi_SBUS2_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 BREADY" *)
output wire m_axi_SBUS2_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 ARADDR" *)
output wire [31 : 0] m_axi_SBUS2_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 ARLEN" *)
output wire [7 : 0] m_axi_SBUS2_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 ARSIZE" *)
output wire [2 : 0] m_axi_SBUS2_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 ARBURST" *)
output wire [1 : 0] m_axi_SBUS2_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 ARLOCK" *)
output wire [1 : 0] m_axi_SBUS2_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 ARREGION" *)
output wire [3 : 0] m_axi_SBUS2_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 ARCACHE" *)
output wire [3 : 0] m_axi_SBUS2_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 ARPROT" *)
output wire [2 : 0] m_axi_SBUS2_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 ARQOS" *)
output wire [3 : 0] m_axi_SBUS2_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 ARVALID" *)
output wire m_axi_SBUS2_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 ARREADY" *)
input wire m_axi_SBUS2_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 RDATA" *)
input wire [31 : 0] m_axi_SBUS2_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 RRESP" *)
input wire [1 : 0] m_axi_SBUS2_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 RLAST" *)
input wire m_axi_SBUS2_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 RVALID" *)
input wire m_axi_SBUS2_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_SBUS2, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 256, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 128571426, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOMAIN\
 design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_SBUS2 RREADY" *)
output wire m_axi_SBUS2_RREADY;

  pwdwconv #(
    .C_S_AXI_CTRL_ADDR_WIDTH(7),
    .C_S_AXI_CTRL_DATA_WIDTH(32),
    .C_M_AXI_PBUS1_ID_WIDTH(1),
    .C_M_AXI_PBUS1_ADDR_WIDTH(32),
    .C_M_AXI_PBUS1_DATA_WIDTH(64),
    .C_M_AXI_PBUS1_AWUSER_WIDTH(1),
    .C_M_AXI_PBUS1_ARUSER_WIDTH(1),
    .C_M_AXI_PBUS1_WUSER_WIDTH(1),
    .C_M_AXI_PBUS1_RUSER_WIDTH(1),
    .C_M_AXI_PBUS1_BUSER_WIDTH(1),
    .C_M_AXI_PBUS1_USER_VALUE('H00000000),
    .C_M_AXI_PBUS1_PROT_VALUE('B000),
    .C_M_AXI_PBUS1_CACHE_VALUE('B0011),
    .C_M_AXI_PBUS2_ID_WIDTH(1),
    .C_M_AXI_PBUS2_ADDR_WIDTH(32),
    .C_M_AXI_PBUS2_DATA_WIDTH(64),
    .C_M_AXI_PBUS2_AWUSER_WIDTH(1),
    .C_M_AXI_PBUS2_ARUSER_WIDTH(1),
    .C_M_AXI_PBUS2_WUSER_WIDTH(1),
    .C_M_AXI_PBUS2_RUSER_WIDTH(1),
    .C_M_AXI_PBUS2_BUSER_WIDTH(1),
    .C_M_AXI_PBUS2_USER_VALUE('H00000000),
    .C_M_AXI_PBUS2_PROT_VALUE('B000),
    .C_M_AXI_PBUS2_CACHE_VALUE('B0011),
    .C_M_AXI_PBUS3_ID_WIDTH(1),
    .C_M_AXI_PBUS3_ADDR_WIDTH(32),
    .C_M_AXI_PBUS3_DATA_WIDTH(64),
    .C_M_AXI_PBUS3_AWUSER_WIDTH(1),
    .C_M_AXI_PBUS3_ARUSER_WIDTH(1),
    .C_M_AXI_PBUS3_WUSER_WIDTH(1),
    .C_M_AXI_PBUS3_RUSER_WIDTH(1),
    .C_M_AXI_PBUS3_BUSER_WIDTH(1),
    .C_M_AXI_PBUS3_USER_VALUE('H00000000),
    .C_M_AXI_PBUS3_PROT_VALUE('B000),
    .C_M_AXI_PBUS3_CACHE_VALUE('B0011),
    .C_M_AXI_PBUS4_ID_WIDTH(1),
    .C_M_AXI_PBUS4_ADDR_WIDTH(32),
    .C_M_AXI_PBUS4_DATA_WIDTH(64),
    .C_M_AXI_PBUS4_AWUSER_WIDTH(1),
    .C_M_AXI_PBUS4_ARUSER_WIDTH(1),
    .C_M_AXI_PBUS4_WUSER_WIDTH(1),
    .C_M_AXI_PBUS4_RUSER_WIDTH(1),
    .C_M_AXI_PBUS4_BUSER_WIDTH(1),
    .C_M_AXI_PBUS4_USER_VALUE('H00000000),
    .C_M_AXI_PBUS4_PROT_VALUE('B000),
    .C_M_AXI_PBUS4_CACHE_VALUE('B0011),
    .C_M_AXI_SBUS1_ID_WIDTH(1),
    .C_M_AXI_SBUS1_ADDR_WIDTH(32),
    .C_M_AXI_SBUS1_DATA_WIDTH(32),
    .C_M_AXI_SBUS1_AWUSER_WIDTH(1),
    .C_M_AXI_SBUS1_ARUSER_WIDTH(1),
    .C_M_AXI_SBUS1_WUSER_WIDTH(1),
    .C_M_AXI_SBUS1_RUSER_WIDTH(1),
    .C_M_AXI_SBUS1_BUSER_WIDTH(1),
    .C_M_AXI_SBUS1_USER_VALUE('H00000000),
    .C_M_AXI_SBUS1_PROT_VALUE('B000),
    .C_M_AXI_SBUS1_CACHE_VALUE('B0011),
    .C_M_AXI_SBUS2_ID_WIDTH(1),
    .C_M_AXI_SBUS2_ADDR_WIDTH(32),
    .C_M_AXI_SBUS2_DATA_WIDTH(32),
    .C_M_AXI_SBUS2_AWUSER_WIDTH(1),
    .C_M_AXI_SBUS2_ARUSER_WIDTH(1),
    .C_M_AXI_SBUS2_WUSER_WIDTH(1),
    .C_M_AXI_SBUS2_RUSER_WIDTH(1),
    .C_M_AXI_SBUS2_BUSER_WIDTH(1),
    .C_M_AXI_SBUS2_USER_VALUE('H00000000),
    .C_M_AXI_SBUS2_PROT_VALUE('B000),
    .C_M_AXI_SBUS2_CACHE_VALUE('B0011)
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
    .m_axi_PBUS1_AWID(),
    .m_axi_PBUS1_AWADDR(m_axi_PBUS1_AWADDR),
    .m_axi_PBUS1_AWLEN(m_axi_PBUS1_AWLEN),
    .m_axi_PBUS1_AWSIZE(m_axi_PBUS1_AWSIZE),
    .m_axi_PBUS1_AWBURST(m_axi_PBUS1_AWBURST),
    .m_axi_PBUS1_AWLOCK(m_axi_PBUS1_AWLOCK),
    .m_axi_PBUS1_AWREGION(m_axi_PBUS1_AWREGION),
    .m_axi_PBUS1_AWCACHE(m_axi_PBUS1_AWCACHE),
    .m_axi_PBUS1_AWPROT(m_axi_PBUS1_AWPROT),
    .m_axi_PBUS1_AWQOS(m_axi_PBUS1_AWQOS),
    .m_axi_PBUS1_AWUSER(),
    .m_axi_PBUS1_AWVALID(m_axi_PBUS1_AWVALID),
    .m_axi_PBUS1_AWREADY(m_axi_PBUS1_AWREADY),
    .m_axi_PBUS1_WID(),
    .m_axi_PBUS1_WDATA(m_axi_PBUS1_WDATA),
    .m_axi_PBUS1_WSTRB(m_axi_PBUS1_WSTRB),
    .m_axi_PBUS1_WLAST(m_axi_PBUS1_WLAST),
    .m_axi_PBUS1_WUSER(),
    .m_axi_PBUS1_WVALID(m_axi_PBUS1_WVALID),
    .m_axi_PBUS1_WREADY(m_axi_PBUS1_WREADY),
    .m_axi_PBUS1_BID(1'B0),
    .m_axi_PBUS1_BRESP(m_axi_PBUS1_BRESP),
    .m_axi_PBUS1_BUSER(1'B0),
    .m_axi_PBUS1_BVALID(m_axi_PBUS1_BVALID),
    .m_axi_PBUS1_BREADY(m_axi_PBUS1_BREADY),
    .m_axi_PBUS1_ARID(),
    .m_axi_PBUS1_ARADDR(m_axi_PBUS1_ARADDR),
    .m_axi_PBUS1_ARLEN(m_axi_PBUS1_ARLEN),
    .m_axi_PBUS1_ARSIZE(m_axi_PBUS1_ARSIZE),
    .m_axi_PBUS1_ARBURST(m_axi_PBUS1_ARBURST),
    .m_axi_PBUS1_ARLOCK(m_axi_PBUS1_ARLOCK),
    .m_axi_PBUS1_ARREGION(m_axi_PBUS1_ARREGION),
    .m_axi_PBUS1_ARCACHE(m_axi_PBUS1_ARCACHE),
    .m_axi_PBUS1_ARPROT(m_axi_PBUS1_ARPROT),
    .m_axi_PBUS1_ARQOS(m_axi_PBUS1_ARQOS),
    .m_axi_PBUS1_ARUSER(),
    .m_axi_PBUS1_ARVALID(m_axi_PBUS1_ARVALID),
    .m_axi_PBUS1_ARREADY(m_axi_PBUS1_ARREADY),
    .m_axi_PBUS1_RID(1'B0),
    .m_axi_PBUS1_RDATA(m_axi_PBUS1_RDATA),
    .m_axi_PBUS1_RRESP(m_axi_PBUS1_RRESP),
    .m_axi_PBUS1_RLAST(m_axi_PBUS1_RLAST),
    .m_axi_PBUS1_RUSER(1'B0),
    .m_axi_PBUS1_RVALID(m_axi_PBUS1_RVALID),
    .m_axi_PBUS1_RREADY(m_axi_PBUS1_RREADY),
    .m_axi_PBUS2_AWID(),
    .m_axi_PBUS2_AWADDR(m_axi_PBUS2_AWADDR),
    .m_axi_PBUS2_AWLEN(m_axi_PBUS2_AWLEN),
    .m_axi_PBUS2_AWSIZE(m_axi_PBUS2_AWSIZE),
    .m_axi_PBUS2_AWBURST(m_axi_PBUS2_AWBURST),
    .m_axi_PBUS2_AWLOCK(m_axi_PBUS2_AWLOCK),
    .m_axi_PBUS2_AWREGION(m_axi_PBUS2_AWREGION),
    .m_axi_PBUS2_AWCACHE(m_axi_PBUS2_AWCACHE),
    .m_axi_PBUS2_AWPROT(m_axi_PBUS2_AWPROT),
    .m_axi_PBUS2_AWQOS(m_axi_PBUS2_AWQOS),
    .m_axi_PBUS2_AWUSER(),
    .m_axi_PBUS2_AWVALID(m_axi_PBUS2_AWVALID),
    .m_axi_PBUS2_AWREADY(m_axi_PBUS2_AWREADY),
    .m_axi_PBUS2_WID(),
    .m_axi_PBUS2_WDATA(m_axi_PBUS2_WDATA),
    .m_axi_PBUS2_WSTRB(m_axi_PBUS2_WSTRB),
    .m_axi_PBUS2_WLAST(m_axi_PBUS2_WLAST),
    .m_axi_PBUS2_WUSER(),
    .m_axi_PBUS2_WVALID(m_axi_PBUS2_WVALID),
    .m_axi_PBUS2_WREADY(m_axi_PBUS2_WREADY),
    .m_axi_PBUS2_BID(1'B0),
    .m_axi_PBUS2_BRESP(m_axi_PBUS2_BRESP),
    .m_axi_PBUS2_BUSER(1'B0),
    .m_axi_PBUS2_BVALID(m_axi_PBUS2_BVALID),
    .m_axi_PBUS2_BREADY(m_axi_PBUS2_BREADY),
    .m_axi_PBUS2_ARID(),
    .m_axi_PBUS2_ARADDR(m_axi_PBUS2_ARADDR),
    .m_axi_PBUS2_ARLEN(m_axi_PBUS2_ARLEN),
    .m_axi_PBUS2_ARSIZE(m_axi_PBUS2_ARSIZE),
    .m_axi_PBUS2_ARBURST(m_axi_PBUS2_ARBURST),
    .m_axi_PBUS2_ARLOCK(m_axi_PBUS2_ARLOCK),
    .m_axi_PBUS2_ARREGION(m_axi_PBUS2_ARREGION),
    .m_axi_PBUS2_ARCACHE(m_axi_PBUS2_ARCACHE),
    .m_axi_PBUS2_ARPROT(m_axi_PBUS2_ARPROT),
    .m_axi_PBUS2_ARQOS(m_axi_PBUS2_ARQOS),
    .m_axi_PBUS2_ARUSER(),
    .m_axi_PBUS2_ARVALID(m_axi_PBUS2_ARVALID),
    .m_axi_PBUS2_ARREADY(m_axi_PBUS2_ARREADY),
    .m_axi_PBUS2_RID(1'B0),
    .m_axi_PBUS2_RDATA(m_axi_PBUS2_RDATA),
    .m_axi_PBUS2_RRESP(m_axi_PBUS2_RRESP),
    .m_axi_PBUS2_RLAST(m_axi_PBUS2_RLAST),
    .m_axi_PBUS2_RUSER(1'B0),
    .m_axi_PBUS2_RVALID(m_axi_PBUS2_RVALID),
    .m_axi_PBUS2_RREADY(m_axi_PBUS2_RREADY),
    .m_axi_PBUS3_AWID(),
    .m_axi_PBUS3_AWADDR(m_axi_PBUS3_AWADDR),
    .m_axi_PBUS3_AWLEN(m_axi_PBUS3_AWLEN),
    .m_axi_PBUS3_AWSIZE(m_axi_PBUS3_AWSIZE),
    .m_axi_PBUS3_AWBURST(m_axi_PBUS3_AWBURST),
    .m_axi_PBUS3_AWLOCK(m_axi_PBUS3_AWLOCK),
    .m_axi_PBUS3_AWREGION(m_axi_PBUS3_AWREGION),
    .m_axi_PBUS3_AWCACHE(m_axi_PBUS3_AWCACHE),
    .m_axi_PBUS3_AWPROT(m_axi_PBUS3_AWPROT),
    .m_axi_PBUS3_AWQOS(m_axi_PBUS3_AWQOS),
    .m_axi_PBUS3_AWUSER(),
    .m_axi_PBUS3_AWVALID(m_axi_PBUS3_AWVALID),
    .m_axi_PBUS3_AWREADY(m_axi_PBUS3_AWREADY),
    .m_axi_PBUS3_WID(),
    .m_axi_PBUS3_WDATA(m_axi_PBUS3_WDATA),
    .m_axi_PBUS3_WSTRB(m_axi_PBUS3_WSTRB),
    .m_axi_PBUS3_WLAST(m_axi_PBUS3_WLAST),
    .m_axi_PBUS3_WUSER(),
    .m_axi_PBUS3_WVALID(m_axi_PBUS3_WVALID),
    .m_axi_PBUS3_WREADY(m_axi_PBUS3_WREADY),
    .m_axi_PBUS3_BID(1'B0),
    .m_axi_PBUS3_BRESP(m_axi_PBUS3_BRESP),
    .m_axi_PBUS3_BUSER(1'B0),
    .m_axi_PBUS3_BVALID(m_axi_PBUS3_BVALID),
    .m_axi_PBUS3_BREADY(m_axi_PBUS3_BREADY),
    .m_axi_PBUS3_ARID(),
    .m_axi_PBUS3_ARADDR(m_axi_PBUS3_ARADDR),
    .m_axi_PBUS3_ARLEN(m_axi_PBUS3_ARLEN),
    .m_axi_PBUS3_ARSIZE(m_axi_PBUS3_ARSIZE),
    .m_axi_PBUS3_ARBURST(m_axi_PBUS3_ARBURST),
    .m_axi_PBUS3_ARLOCK(m_axi_PBUS3_ARLOCK),
    .m_axi_PBUS3_ARREGION(m_axi_PBUS3_ARREGION),
    .m_axi_PBUS3_ARCACHE(m_axi_PBUS3_ARCACHE),
    .m_axi_PBUS3_ARPROT(m_axi_PBUS3_ARPROT),
    .m_axi_PBUS3_ARQOS(m_axi_PBUS3_ARQOS),
    .m_axi_PBUS3_ARUSER(),
    .m_axi_PBUS3_ARVALID(m_axi_PBUS3_ARVALID),
    .m_axi_PBUS3_ARREADY(m_axi_PBUS3_ARREADY),
    .m_axi_PBUS3_RID(1'B0),
    .m_axi_PBUS3_RDATA(m_axi_PBUS3_RDATA),
    .m_axi_PBUS3_RRESP(m_axi_PBUS3_RRESP),
    .m_axi_PBUS3_RLAST(m_axi_PBUS3_RLAST),
    .m_axi_PBUS3_RUSER(1'B0),
    .m_axi_PBUS3_RVALID(m_axi_PBUS3_RVALID),
    .m_axi_PBUS3_RREADY(m_axi_PBUS3_RREADY),
    .m_axi_PBUS4_AWID(),
    .m_axi_PBUS4_AWADDR(m_axi_PBUS4_AWADDR),
    .m_axi_PBUS4_AWLEN(m_axi_PBUS4_AWLEN),
    .m_axi_PBUS4_AWSIZE(m_axi_PBUS4_AWSIZE),
    .m_axi_PBUS4_AWBURST(m_axi_PBUS4_AWBURST),
    .m_axi_PBUS4_AWLOCK(m_axi_PBUS4_AWLOCK),
    .m_axi_PBUS4_AWREGION(m_axi_PBUS4_AWREGION),
    .m_axi_PBUS4_AWCACHE(m_axi_PBUS4_AWCACHE),
    .m_axi_PBUS4_AWPROT(m_axi_PBUS4_AWPROT),
    .m_axi_PBUS4_AWQOS(m_axi_PBUS4_AWQOS),
    .m_axi_PBUS4_AWUSER(),
    .m_axi_PBUS4_AWVALID(m_axi_PBUS4_AWVALID),
    .m_axi_PBUS4_AWREADY(m_axi_PBUS4_AWREADY),
    .m_axi_PBUS4_WID(),
    .m_axi_PBUS4_WDATA(m_axi_PBUS4_WDATA),
    .m_axi_PBUS4_WSTRB(m_axi_PBUS4_WSTRB),
    .m_axi_PBUS4_WLAST(m_axi_PBUS4_WLAST),
    .m_axi_PBUS4_WUSER(),
    .m_axi_PBUS4_WVALID(m_axi_PBUS4_WVALID),
    .m_axi_PBUS4_WREADY(m_axi_PBUS4_WREADY),
    .m_axi_PBUS4_BID(1'B0),
    .m_axi_PBUS4_BRESP(m_axi_PBUS4_BRESP),
    .m_axi_PBUS4_BUSER(1'B0),
    .m_axi_PBUS4_BVALID(m_axi_PBUS4_BVALID),
    .m_axi_PBUS4_BREADY(m_axi_PBUS4_BREADY),
    .m_axi_PBUS4_ARID(),
    .m_axi_PBUS4_ARADDR(m_axi_PBUS4_ARADDR),
    .m_axi_PBUS4_ARLEN(m_axi_PBUS4_ARLEN),
    .m_axi_PBUS4_ARSIZE(m_axi_PBUS4_ARSIZE),
    .m_axi_PBUS4_ARBURST(m_axi_PBUS4_ARBURST),
    .m_axi_PBUS4_ARLOCK(m_axi_PBUS4_ARLOCK),
    .m_axi_PBUS4_ARREGION(m_axi_PBUS4_ARREGION),
    .m_axi_PBUS4_ARCACHE(m_axi_PBUS4_ARCACHE),
    .m_axi_PBUS4_ARPROT(m_axi_PBUS4_ARPROT),
    .m_axi_PBUS4_ARQOS(m_axi_PBUS4_ARQOS),
    .m_axi_PBUS4_ARUSER(),
    .m_axi_PBUS4_ARVALID(m_axi_PBUS4_ARVALID),
    .m_axi_PBUS4_ARREADY(m_axi_PBUS4_ARREADY),
    .m_axi_PBUS4_RID(1'B0),
    .m_axi_PBUS4_RDATA(m_axi_PBUS4_RDATA),
    .m_axi_PBUS4_RRESP(m_axi_PBUS4_RRESP),
    .m_axi_PBUS4_RLAST(m_axi_PBUS4_RLAST),
    .m_axi_PBUS4_RUSER(1'B0),
    .m_axi_PBUS4_RVALID(m_axi_PBUS4_RVALID),
    .m_axi_PBUS4_RREADY(m_axi_PBUS4_RREADY),
    .m_axi_SBUS1_AWID(),
    .m_axi_SBUS1_AWADDR(m_axi_SBUS1_AWADDR),
    .m_axi_SBUS1_AWLEN(m_axi_SBUS1_AWLEN),
    .m_axi_SBUS1_AWSIZE(m_axi_SBUS1_AWSIZE),
    .m_axi_SBUS1_AWBURST(m_axi_SBUS1_AWBURST),
    .m_axi_SBUS1_AWLOCK(m_axi_SBUS1_AWLOCK),
    .m_axi_SBUS1_AWREGION(m_axi_SBUS1_AWREGION),
    .m_axi_SBUS1_AWCACHE(m_axi_SBUS1_AWCACHE),
    .m_axi_SBUS1_AWPROT(m_axi_SBUS1_AWPROT),
    .m_axi_SBUS1_AWQOS(m_axi_SBUS1_AWQOS),
    .m_axi_SBUS1_AWUSER(),
    .m_axi_SBUS1_AWVALID(m_axi_SBUS1_AWVALID),
    .m_axi_SBUS1_AWREADY(m_axi_SBUS1_AWREADY),
    .m_axi_SBUS1_WID(),
    .m_axi_SBUS1_WDATA(m_axi_SBUS1_WDATA),
    .m_axi_SBUS1_WSTRB(m_axi_SBUS1_WSTRB),
    .m_axi_SBUS1_WLAST(m_axi_SBUS1_WLAST),
    .m_axi_SBUS1_WUSER(),
    .m_axi_SBUS1_WVALID(m_axi_SBUS1_WVALID),
    .m_axi_SBUS1_WREADY(m_axi_SBUS1_WREADY),
    .m_axi_SBUS1_BID(1'B0),
    .m_axi_SBUS1_BRESP(m_axi_SBUS1_BRESP),
    .m_axi_SBUS1_BUSER(1'B0),
    .m_axi_SBUS1_BVALID(m_axi_SBUS1_BVALID),
    .m_axi_SBUS1_BREADY(m_axi_SBUS1_BREADY),
    .m_axi_SBUS1_ARID(),
    .m_axi_SBUS1_ARADDR(m_axi_SBUS1_ARADDR),
    .m_axi_SBUS1_ARLEN(m_axi_SBUS1_ARLEN),
    .m_axi_SBUS1_ARSIZE(m_axi_SBUS1_ARSIZE),
    .m_axi_SBUS1_ARBURST(m_axi_SBUS1_ARBURST),
    .m_axi_SBUS1_ARLOCK(m_axi_SBUS1_ARLOCK),
    .m_axi_SBUS1_ARREGION(m_axi_SBUS1_ARREGION),
    .m_axi_SBUS1_ARCACHE(m_axi_SBUS1_ARCACHE),
    .m_axi_SBUS1_ARPROT(m_axi_SBUS1_ARPROT),
    .m_axi_SBUS1_ARQOS(m_axi_SBUS1_ARQOS),
    .m_axi_SBUS1_ARUSER(),
    .m_axi_SBUS1_ARVALID(m_axi_SBUS1_ARVALID),
    .m_axi_SBUS1_ARREADY(m_axi_SBUS1_ARREADY),
    .m_axi_SBUS1_RID(1'B0),
    .m_axi_SBUS1_RDATA(m_axi_SBUS1_RDATA),
    .m_axi_SBUS1_RRESP(m_axi_SBUS1_RRESP),
    .m_axi_SBUS1_RLAST(m_axi_SBUS1_RLAST),
    .m_axi_SBUS1_RUSER(1'B0),
    .m_axi_SBUS1_RVALID(m_axi_SBUS1_RVALID),
    .m_axi_SBUS1_RREADY(m_axi_SBUS1_RREADY),
    .m_axi_SBUS2_AWID(),
    .m_axi_SBUS2_AWADDR(m_axi_SBUS2_AWADDR),
    .m_axi_SBUS2_AWLEN(m_axi_SBUS2_AWLEN),
    .m_axi_SBUS2_AWSIZE(m_axi_SBUS2_AWSIZE),
    .m_axi_SBUS2_AWBURST(m_axi_SBUS2_AWBURST),
    .m_axi_SBUS2_AWLOCK(m_axi_SBUS2_AWLOCK),
    .m_axi_SBUS2_AWREGION(m_axi_SBUS2_AWREGION),
    .m_axi_SBUS2_AWCACHE(m_axi_SBUS2_AWCACHE),
    .m_axi_SBUS2_AWPROT(m_axi_SBUS2_AWPROT),
    .m_axi_SBUS2_AWQOS(m_axi_SBUS2_AWQOS),
    .m_axi_SBUS2_AWUSER(),
    .m_axi_SBUS2_AWVALID(m_axi_SBUS2_AWVALID),
    .m_axi_SBUS2_AWREADY(m_axi_SBUS2_AWREADY),
    .m_axi_SBUS2_WID(),
    .m_axi_SBUS2_WDATA(m_axi_SBUS2_WDATA),
    .m_axi_SBUS2_WSTRB(m_axi_SBUS2_WSTRB),
    .m_axi_SBUS2_WLAST(m_axi_SBUS2_WLAST),
    .m_axi_SBUS2_WUSER(),
    .m_axi_SBUS2_WVALID(m_axi_SBUS2_WVALID),
    .m_axi_SBUS2_WREADY(m_axi_SBUS2_WREADY),
    .m_axi_SBUS2_BID(1'B0),
    .m_axi_SBUS2_BRESP(m_axi_SBUS2_BRESP),
    .m_axi_SBUS2_BUSER(1'B0),
    .m_axi_SBUS2_BVALID(m_axi_SBUS2_BVALID),
    .m_axi_SBUS2_BREADY(m_axi_SBUS2_BREADY),
    .m_axi_SBUS2_ARID(),
    .m_axi_SBUS2_ARADDR(m_axi_SBUS2_ARADDR),
    .m_axi_SBUS2_ARLEN(m_axi_SBUS2_ARLEN),
    .m_axi_SBUS2_ARSIZE(m_axi_SBUS2_ARSIZE),
    .m_axi_SBUS2_ARBURST(m_axi_SBUS2_ARBURST),
    .m_axi_SBUS2_ARLOCK(m_axi_SBUS2_ARLOCK),
    .m_axi_SBUS2_ARREGION(m_axi_SBUS2_ARREGION),
    .m_axi_SBUS2_ARCACHE(m_axi_SBUS2_ARCACHE),
    .m_axi_SBUS2_ARPROT(m_axi_SBUS2_ARPROT),
    .m_axi_SBUS2_ARQOS(m_axi_SBUS2_ARQOS),
    .m_axi_SBUS2_ARUSER(),
    .m_axi_SBUS2_ARVALID(m_axi_SBUS2_ARVALID),
    .m_axi_SBUS2_ARREADY(m_axi_SBUS2_ARREADY),
    .m_axi_SBUS2_RID(1'B0),
    .m_axi_SBUS2_RDATA(m_axi_SBUS2_RDATA),
    .m_axi_SBUS2_RRESP(m_axi_SBUS2_RRESP),
    .m_axi_SBUS2_RLAST(m_axi_SBUS2_RLAST),
    .m_axi_SBUS2_RUSER(1'B0),
    .m_axi_SBUS2_RVALID(m_axi_SBUS2_RVALID),
    .m_axi_SBUS2_RREADY(m_axi_SBUS2_RREADY)
  );
endmodule
