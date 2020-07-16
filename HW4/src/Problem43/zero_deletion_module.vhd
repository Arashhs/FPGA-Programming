--/*
--**********************************************************
--  Design Automation Course Homework (Spring, 2020 Semester)
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce.aut.ac.ir
--  Created by TA (ali[dot]mohammadpour[at]ac[dot]ir)
--  *******************************************************
--  Student ID  : 9631019
--  Student Name: Arash Hajisafi
--  Student Mail: hajisafiarash@gmail.com
--  *******************************************************
--  Module: ProblemSet 4, Problem 3, Zero Deletion Module
--  *******************************************************
--  Additional Comments:
--*/

library ieee;
use ieee.std_logic_1164.all;

entity zero_deletion_module is
	port (
		clock    : in  std_logic ;
		din      : in  std_logic ;
		reset    : in  std_logic ;
		enable   : in  std_logic ;
		is_valid : out std_logic ;
		dout     : out std_logic ;
		detected : out std_logic ) ;
end zero_deletion_module;

architecture zero_deletion_module_arch of zero_deletion_module is

	component zero_deletion_detector is
	port (
		clock    : in  std_logic ;
		din      : in  std_logic ;
		reset    : in  std_logic ;
		enable   : in  std_logic ;
		detected : out std_logic ) ;
	end component zero_deletion_detector;

	-- write your code here
	
	signal det: std_logic;

begin

	-- write your code here
	zero_detector: zero_deletion_detector port map(clock, din, reset, enable, det);
    
    is_valid <= '1' when det = '0' and enable = '1' and reset = '0' else
                '0';
                
    detected <= det;
    dout <= din when reset = '0' and enable = '1' else
            '0';
    
end zero_deletion_module_arch;