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

configuration shifter_tb_config of problem_2_5 is

	for problem_2_5_arc

		for shifter_2_3 : shifter

			use entity work.shifter(p2_3_arc);

		end for;
		
		for shifter_2_4 : shifter

			use entity work.shifter(p2_4_arc);
			
			for p2_4_arc                        
                for all: mux
                    use entity work.mux(mux8);
                end for;
                
                end for;

		end for;

	end for;

end configuration shifter_tb_config;