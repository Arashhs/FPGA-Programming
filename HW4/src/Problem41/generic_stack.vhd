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
--  Student Mail: hajisafi@aut.ac.ir
--  *******************************************************
--  Module: ProblemSet 4, Problem 1, Generic Stack
--  *******************************************************
--  Additional Comments:
--*/

library ieee;
use ieee.std_logic_1164.all;

entity generic_stack is
	generic (
		n : positive := 4;
		m : positive := 8
	);
	port (
		clock     : in  std_logic ;
		din       : in  std_logic_vector(m -1 downto 0) ;
		clear     : in  std_logic ;
		push      : in  std_logic ;
		pop       : in  std_logic ;
		dout      : out std_logic_vector(m -1 downto 0) ;
		exception : out std_logic ;
		empty     : out std_logic ;
		full      : out std_logic ) ;
end generic_stack;

architecture generic_stack_arch of generic_stack is

	type memory is array (0 to 2 ** n - 1) of std_logic_vector(m-1 downto 0) ;
	
	signal mem: memory;

begin

	process(clock, clear)
	
	variable sp: integer range 0 to 2 ** n := 0;
	begin
	   if(clear = '1') then
	       sp := 0;
	       empty <= '1';
	       full <= '0';
	       exception <= '0';
	       dout <= (others => '0');
	   
	   elsif(rising_edge(clock)) then
	   
           if(pop = '1') then
               if(sp /= 0) then
	               dout <= mem(sp - 1);
	               sp := sp - 1;
	               exception <= '0';
	           else
	               exception <= '1';
	           end if;
	       end if;
	       
	       if(push = '1') then
	           if(sp /= 2**n) then
	               mem(sp) <= din;
	               sp := sp + 1;
	               exception <= '0';
	           else
	               exception <= '1';
	           end if;
	       end if;
	       
	       if(sp = 2**n) then
	           full <= '1';
	       elsif(sp = 0) then
	           empty <= '1';
	       else
	           full <= '0';
	           empty <= '0';
	       end if;
	   
	   end if;
	       
	end process;

end generic_stack_arch;