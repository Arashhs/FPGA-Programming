--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
--Date        : Mon Jun  8 16:26:40 2020
--Host        : Arash running 64-bit major release  (build 9200)
--Command     : generate_target sine_cosine_module_wrapper.bd
--Design      : sine_cosine_module_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sine_cosine_module_wrapper is
  port (
    aclk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    din_tready : out STD_LOGIC;
    din_tvalid : in STD_LOGIC;
    dout_cosinus : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dout_sinus : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dout_tvalid : out STD_LOGIC
  );
end sine_cosine_module_wrapper;

architecture STRUCTURE of sine_cosine_module_wrapper is
  component sine_cosine_module is
  port (
    din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    din_tvalid : in STD_LOGIC;
    aclk : in STD_LOGIC;
    din_tready : out STD_LOGIC;
    dout_cosinus : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dout_sinus : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dout_tvalid : out STD_LOGIC
  );
  end component sine_cosine_module;
begin
sine_cosine_module_i: component sine_cosine_module
     port map (
      aclk => aclk,
      din(15 downto 0) => din(15 downto 0),
      din_tready => din_tready,
      din_tvalid => din_tvalid,
      dout_cosinus(15 downto 0) => dout_cosinus(15 downto 0),
      dout_sinus(15 downto 0) => dout_sinus(15 downto 0),
      dout_tvalid => dout_tvalid
    );
end STRUCTURE;
