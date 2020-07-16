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
--  Module: ProblemSet 3, Problem 2, Section B
--  *******************************************************
--  Additional Comments:
--*/

library ieee;
use ieee.std_logic_1164.all;

entity sipo is
	port (
		clk : in std_logic ;
		ser_in : in std_logic ;
		reset : in std_logic ;
		shift_en : in std_logic ;
		para_out : out std_logic_vector );

end sipo;

architecture sipo_arc of sipo is

begin

     process(clk, reset)
     variable temp: std_logic_vector(para_out'range);
     begin
        if reset = '1' then
            temp := (others => '0');
        elsif(rising_edge(clk)) then
            if shift_en = '1' then
                temp(para_out'high - 1 downto 0) := temp(para_out'high downto 1);
                temp(para_out'high) := ser_in;
           
            else
                null;
            end if;
        end if;
        para_out <= temp;
                    
     end process;

end  sipo_arc;

