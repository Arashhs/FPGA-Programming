--/*
--**********************************************************
--  Design Automation Course Homework (Spring, 2020 Semester)
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce.aut.ac.ir
--  Designed TA (ali[dot]mohammadpour[at]ac[dot]ir)
--  *******************************************************
--  Student ID  : 9631019
--  Student Name: Arash Hajisafi
--  Student Mail: hajisafiarash@gmail.com
--  *******************************************************
--  Module: ProblemSet 2, Problem 5 , Testbench
--  *******************************************************
--  Additional Comments:
--*/

library ieee;
use ieee.std_logic_1164.all;

entity problem_2_5 is
end problem_2_5;

architecture problem_2_5_arc of problem_2_5 is
	
	signal mode: std_logic := '0';
	signal input: std_logic_vector(7 downto 0) := (others =>'0');

    component shifter is
	port (
		data_inp : in std_logic_vector(7 downto 0) ;
		shamt : in std_logic_vector(2 downto 0) ;
		shmod : in std_logic ; 
		data_out : out std_logic_vector(7 downto 0));

    end component;
    
		signal shamt :  std_logic_vector(2 downto 0) ;
		signal data_out_2_3 :  std_logic_vector(7 downto 0);
		signal data_out_2_4 :  std_logic_vector(7 downto 0);

begin


     -- write your code here
     shifter_2_3: shifter port map(input, shamt, mode, data_out_2_3);
     shifter_2_4: shifter port map(input, shamt, mode, data_out_2_4);

	mode <= '0',
			'1' after 20 ns,
			'0' after 40 ns;

	input <= b"11_10_10_10" after 10 ns, -- b stands for binary and underscores
			 b"01_10_11_01" after 30 ns; -- are ignored by the compiler.

	shamt <= b"101" ;

end  problem_2_5_arc;
