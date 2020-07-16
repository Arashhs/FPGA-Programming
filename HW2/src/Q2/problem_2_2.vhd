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
--  Module: ProblemSet 2, Problem 2
--  *******************************************************
--  Additional Comments:
--*/

library ieee;
use ieee.std_logic_1164.all;

entity problem_2_2 is
	port (
		a : in std_logic_vector(7 downto 0) ;
		b : in std_logic_vector(7 downto 0) ;
		c : in std_logic_vector(7 downto 0) ;
		d : in std_logic_vector(7 downto 0) ;
		mode : in std_logic ;
		y0 : out std_logic_vector(7 downto 0) ;
		y1 : out std_logic_vector(7 downto 0) ;
		y2 : out std_logic_vector(7 downto 0) ;
		y3 : out std_logic_vector(7 downto 0) ) ;
		

end problem_2_2;

architecture problem_2_2_arc of problem_2_2 is
    
    signal t0, t1, t2, t3, t4, t5, t6, t7: std_logic_vector(7 downto 0);

    component sort is
    port (
        a : in std_logic_vector(7 downto 0);
        b : in std_logic_vector(7 downto 0);
		y0 : out std_logic_vector(7 downto 0);
		y1 : out std_logic_vector(7 downto 0);
		mode : in std_logic );
		end component;
		
begin

     sort1: sort port map(a, b, t0, t1, mode);
     sort2: sort port map(c, d, t2, t3, mode);
     sort3: sort port map(t1, t2, t4, t5, mode);
     sort4: sort port map(t0, t4, y0, t6, mode);
     sort5: sort port map(t5, t3, t7, y3, mode);
     sort6: sort port map(t6, t7, y1, y2, mode);
     

end  problem_2_2_arc;

------------------------------------------------
------- describe new modules here --------------
------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sort is
    port (
        a : in std_logic_vector(7 downto 0);
        b : in std_logic_vector(7 downto 0);
		y0 : out std_logic_vector(7 downto 0);
		y1 : out std_logic_vector(7 downto 0);
		mode : in std_logic );
	end sort;
	
architecture sort_arc of sort is
    signal a_temp: signed (7 downto 0);
    signal b_temp: signed (7 downto 0);

    begin
        a_temp <= signed(a);
        b_temp <= signed(b);
        y0 <= a when (a_temp<b_temp and mode = '1') or (a_temp>b_temp and mode = '0')
              else b;
        y1 <= a when (a_temp>b_temp and mode = '1') or (a_temp<b_temp and mode = '0')
              else b;
              
    end sort_arc;