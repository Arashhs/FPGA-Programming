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
--  Module: ProblemSet 2, Problem 6
--  *******************************************************
--  Additional Comments:
--*/

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity problem_2_6 is
	port (
		din : in std_logic_vector(7 downto 0) ;
		dout : out std_logic_vector(2 downto 0)) ;

end problem_2_6;

architecture problem_2_6_arc of problem_2_6 is

begin
     ---- write your code here -----

	log_2_ceil : process( din )
	variable temp, res, loopsize: integer;

	begin
	temp := to_integer(unsigned(din));
	res := 0;
	loopsize := 8;
	while loopsize /= 0 loop
	   if temp > 1 then
	       res := res + 1;
	       end if;
	   temp := temp / 2;
	   loopsize := loopsize - 1;
	end loop;
	
	dout <= std_logic_vector(to_unsigned(res, 3));	

	end process ; -- log_2_ceil



end  problem_2_6_arc;
