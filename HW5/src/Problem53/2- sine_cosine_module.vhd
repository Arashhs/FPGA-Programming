--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
--Date        : Mon Jun  8 16:26:40 2020
--Host        : Arash running 64-bit major release  (build 9200)
--Command     : generate_target sine_cosine_module.bd
--Design      : sine_cosine_module
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sine_cosine_module is
  port (
    aclk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    din_tready : out STD_LOGIC;
    din_tvalid : in STD_LOGIC;
    dout_cosinus : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dout_sinus : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dout_tvalid : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of sine_cosine_module : entity is "sine_cosine_module,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=sine_cosine_module,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of sine_cosine_module : entity is "sine_cosine_module.hwdef";
end sine_cosine_module;

architecture STRUCTURE of sine_cosine_module is
  component sine_cosine_module_cordic_0_1 is
  port (
    aclk : in STD_LOGIC;
    s_axis_phase_tvalid : in STD_LOGIC;
    s_axis_phase_tready : out STD_LOGIC;
    s_axis_phase_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component sine_cosine_module_cordic_0_1;
  component sine_cosine_module_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component sine_cosine_module_xlslice_0_1;
  component sine_cosine_module_xlslice_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component sine_cosine_module_xlslice_1_0;
  signal aclk_1 : STD_LOGIC;
  signal cordic_0_m_axis_dout_tdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cordic_0_m_axis_dout_tvalid : STD_LOGIC;
  signal cordic_0_s_axis_phase_tready : STD_LOGIC;
  signal din_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal din_tvalid_1 : STD_LOGIC;
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
  aclk_1 <= aclk;
  din_1(15 downto 0) <= din(15 downto 0);
  din_tready <= cordic_0_s_axis_phase_tready;
  din_tvalid_1 <= din_tvalid;
  dout_cosinus(15 downto 0) <= xlslice_0_Dout(15 downto 0);
  dout_sinus(15 downto 0) <= xlslice_1_Dout(15 downto 0);
  dout_tvalid <= cordic_0_m_axis_dout_tvalid;
cordic_0: component sine_cosine_module_cordic_0_1
     port map (
      aclk => aclk_1,
      m_axis_dout_tdata(31 downto 0) => cordic_0_m_axis_dout_tdata(31 downto 0),
      m_axis_dout_tvalid => cordic_0_m_axis_dout_tvalid,
      s_axis_phase_tdata(15 downto 0) => din_1(15 downto 0),
      s_axis_phase_tready => cordic_0_s_axis_phase_tready,
      s_axis_phase_tvalid => din_tvalid_1
    );
xlslice_0: component sine_cosine_module_xlslice_0_1
     port map (
      Din(31 downto 0) => cordic_0_m_axis_dout_tdata(31 downto 0),
      Dout(15 downto 0) => xlslice_0_Dout(15 downto 0)
    );
xlslice_1: component sine_cosine_module_xlslice_1_0
     port map (
      Din(31 downto 0) => cordic_0_m_axis_dout_tdata(31 downto 0),
      Dout(15 downto 0) => xlslice_1_Dout(15 downto 0)
    );
end STRUCTURE;
