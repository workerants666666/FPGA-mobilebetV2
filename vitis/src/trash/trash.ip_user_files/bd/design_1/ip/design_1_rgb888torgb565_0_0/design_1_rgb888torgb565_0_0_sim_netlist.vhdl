-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Mon Oct  5 18:04:54 2026
-- Host        : LAPTOP-JO00M47A running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/fpga/2019.2/trash/trash.srcs/sources_1/bd/design_1/ip/design_1_rgb888torgb565_0_0/design_1_rgb888torgb565_0_0_sim_netlist.vhdl
-- Design      : design_1_rgb888torgb565_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_rgb888torgb565_0_0 is
  port (
    RGB888 : in STD_LOGIC_VECTOR ( 23 downto 0 );
    RGB565 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_rgb888torgb565_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_rgb888torgb565_0_0 : entity is "design_1_rgb888torgb565_0_0,rgb888torgb565,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_rgb888torgb565_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_rgb888torgb565_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_rgb888torgb565_0_0 : entity is "rgb888torgb565,Vivado 2019.2";
end design_1_rgb888torgb565_0_0;

architecture STRUCTURE of design_1_rgb888torgb565_0_0 is
  signal \^rgb888\ : STD_LOGIC_VECTOR ( 23 downto 0 );
begin
  RGB565(15 downto 11) <= \^rgb888\(23 downto 19);
  RGB565(10 downto 5) <= \^rgb888\(15 downto 10);
  RGB565(4 downto 0) <= \^rgb888\(7 downto 3);
  \^rgb888\(23 downto 19) <= RGB888(23 downto 19);
  \^rgb888\(15 downto 10) <= RGB888(15 downto 10);
  \^rgb888\(7 downto 3) <= RGB888(7 downto 3);
end STRUCTURE;
