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
--  Module: ProblemSet 4, Problem 2, Average Weighted Filter
--  *******************************************************
--  Additional Comments:
--*/

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity filter is
	port (
		clock    : in  std_logic ;
		reset    : in  std_logic ;
		input_x  : in  std_logic_vector(7 downto 0) ;
		coef_0   : in  std_logic_vector(3 downto 0) ;
		coef_1   : in  std_logic_vector(3 downto 0) ;
		coef_2   : in  std_logic_vector(3 downto 0) ;
		coef_3   : in  std_logic_vector(3 downto 0) ;
		output_y : out std_logic_vector(7 downto 0) ) ;
end filter;

architecture filter_arch of filter is

signal x1, x2, x3: signed(7 downto 0);

begin
    
	process(clock, reset)
	   begin
	       if(reset = '1') then
	       --    output_y <= (others => '0');
	           x1 <= (others => '0');
	           x2 <= (others => '0');
	           x3 <= (others => '0');
	           
	       elsif(rising_edge(clock)) then
	           x3 <= x2;
	           x2 <= x1;
	           x1 <= signed(input_x);

	       end if; 
	   end process;
	   
	   
	  process(input_x)
	  
	  variable res: signed(11 downto 0);
	  begin
	   	       res := (signed(coef_0) * signed(input_x) + signed(coef_1) * x1 + signed(coef_2) * x2 + signed(coef_3) * x3)/4;
	           output_y <= std_logic_vector(res(7 downto 0));
	           
	  end process;


end filter_arch;