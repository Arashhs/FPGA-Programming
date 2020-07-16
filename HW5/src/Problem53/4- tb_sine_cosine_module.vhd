--/*
--***********************************************************
--  Design Automation Course Homework (Spring, 2020 Semester)
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce.aut.ac.ir
--  Created by TA (ali[dot]mohammadpour[at]ac[dot]ir)
--  *********************************************************
--  Student ID  : 9631019
--  Student Name: Arash Hajisafi
--  Student Mail: hajisafiarash@gmail.com
--  *********************************************************
--  Module: ProblemSet 5, Problem 3, Sine_Cosine_Module TB
--  *********************************************************
--  Additional Comments:
--*/

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

-----------------------------------------------------------

entity tb_sine_cosine_module is
end entity tb_sine_cosine_module;

-----------------------------------------------------------

architecture testbench of tb_sine_cosine_module is

	component sine_cosine_module is
      port (
        aclk : in STD_LOGIC;
        din : in STD_LOGIC_VECTOR ( 15 downto 0 );
        din_tready : out STD_LOGIC;
        din_tvalid : in STD_LOGIC;
        dout_cosinus : out STD_LOGIC_VECTOR ( 15 downto 0 );
        dout_sinus : out STD_LOGIC_VECTOR ( 15 downto 0 );
        dout_tvalid : out STD_LOGIC
      );
	end component sine_cosine_module;

	signal aclk        : std_logic := '0' ;
	signal din_tvalid  : std_logic ;
	signal din         : std_logic_vector(15 downto 0) ;
	signal din_tready  : std_logic ;
	signal dout_tvalid : std_logic ;
	signal dout_sine   : std_logic_vector(15 downto 0);
	signal dout_cosine : std_logic_vector(15 downto 0);

begin

	-- Design Under Test
	dut : sine_cosine_module
		port map (
			aclk        => aclk,
			din_tvalid  => din_tvalid,
			din         => din,
			din_tready  => din_tready,
			dout_tvalid => dout_tvalid,
			dout_sinus   => dout_cosine, --these two are assigned inverted in design
			dout_cosinus => dout_sine -- these two are assigned inverted in design
		);

	-- Clock Generation
	aclk <= not aclk after 5 ns; -- 100 MHz
	
	din <= "0000000000000000", --  0 radian
	       "0011001000111101" after 50ns, --  pi/2
	       "0000100001100000" after 130ns, --  pi/12
	       "0000110010010000" after 210ns, -- pi/8
	       "0001100100000000" after 290ns, -- pi/4
	       "0010000110000010" after 370ns, -- pi/3
	       "0001000011000001" after 450ns, -- pi/6
	       "0100001100000101" after 530ns, -- 2pi/3
	       "0001001011001111" after 610ns, -- pi/5
	       "0000110111100010" after 690ns; -- pi/7
	       
	       
	din_tvalid <= '0', '1' after 30ns, '0' after 40ns,
	              '1' after 55ns, '0' after 75ns, '1' after 95ns;

end architecture testbench;