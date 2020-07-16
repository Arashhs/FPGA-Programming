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
--  Module: ProblemSet 2, Problem 3, Section B
--  *******************************************************
--  Additional Comments:
--*/

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity problem_2_3_a is
	port (
		data_inp : in std_logic_vector(7 downto 0) ;
		shamt : in std_logic_vector(2 downto 0) ;
		shmod : in std_logic ; 
		data_out : out std_logic_vector(7 downto 0));

end problem_2_3_a;

architecture problem_2_3_a_arc of problem_2_3_a is

begin

     process(data_inp, shamt, shmod) 
     begin
        if (shmod = '0') then
            data_out <= std_logic_vector(unsigned(data_inp) srl to_integer(unsigned(shamt)));
            
        else
            data_out <= to_stdlogicvector(to_bitvector(data_inp) sra to_integer(unsigned(shamt)));
        
        end if;
            
     end process;

end  problem_2_3_a_arc;
