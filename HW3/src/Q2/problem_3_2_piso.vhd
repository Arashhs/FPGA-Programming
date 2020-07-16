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
--  Module: ProblemSet 3, Problem 2, Section A
--  *******************************************************
--  Additional Comments:
--*/

library ieee;
use ieee.std_logic_1164.all;

entity piso is
	port (
		clk : in std_logic ;
		para_in : in std_logic_vector;
		reset : in std_logic ;
		load : in std_logic ; 
		shift_en : in std_logic ; 
		ser_out : out std_logic) ;
end piso;

architecture piso_arc of piso is

begin

     process(clk, reset, load)
     variable temp: std_logic_vector(para_in'range);
     begin
        if reset = '1' then
            temp := (others => '0');
        elsif load = '1' then
            temp := para_in;
        elsif(rising_edge(clk)) then
            if shift_en = '1' then
                temp(para_in'high - 1 downto 0) := temp(para_in'high downto 1);
                temp(para_in'high) := '0';
           
            else
                null;
            end if;
        end if;
        ser_out <= temp(0);
            
     end process;

end  piso_arc;

