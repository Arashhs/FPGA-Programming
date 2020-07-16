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


entity problem_2_3_b is
	port (
		data_inp : in std_logic_vector(7 downto 0) ;
		shamt : in std_logic_vector(2 downto 0) ;
		shmod : in std_logic ; 
		data_out : out std_logic_vector(7 downto 0));

end problem_2_3_b;

architecture problem_2_3_b_arc of problem_2_3_b is

     function shiftVec ( data_in: std_logic_vector (7 downto 0);
                        sh_mod: std_logic
                        ) return std_logic_vector is
                        variable d_out: std_logic_vector (7 downto 0);
                        begin
                            if sh_mod = '0' then
                                d_out := std_logic_vector(unsigned(data_in) srl to_integer(unsigned(shamt)));
                            else
                                d_out := to_stdlogicvector(to_bitvector(data_in) sra to_integer(unsigned(shamt)));
                            
                            end if;
                            
                            return d_out;

                        end function;
                        
begin

    data_out <= shiftVec(data_inp, shmod);
end  problem_2_3_b_arc;
