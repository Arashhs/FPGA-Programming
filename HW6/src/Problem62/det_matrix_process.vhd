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
--  Module: ProblemSet 6, Problem 2, MAtrix Determinant
--  *******************************************************
--  Additional Comments:
--*/
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity det_matrix is
	port (
		clk : in  std_logic;
		a   : in  std_logic_vector(7 downto 0);
		b   : in  std_logic_vector(7 downto 0);
		c   : in  std_logic_vector(7 downto 0);
		d   : in  std_logic_vector(7 downto 0);
		e   : in  std_logic_vector(7 downto 0);
		f   : in  std_logic_vector(7 downto 0);
		g   : in  std_logic_vector(7 downto 0);
		h   : in  std_logic_vector(7 downto 0);
		i   : in  std_logic_vector(7 downto 0);
		det : out std_logic_vector(7 downto 0));

end det_matrix;

architecture det_matrix_arch_proc of det_matrix is

begin
    -- process for calculating det
    process(clk)
    variable t1, t2, t3, t4, t5, t6, res: signed(23 downto 0);
    
    begin
    if(rising_edge(clk)) then
        t1 := signed(a) * signed(e) * signed(i);
        t2 := signed(b) * signed(f) * signed(g);
        t3 := signed(c) * signed(d) * signed(h);
        t4 := signed(c) * signed(e) * signed(g);
        t5 := signed(b) * signed(d) * signed(i);
        t6 := signed(a) * signed(f) * signed(h);
        res := (t1 + t2 + t3) - (t4 + t5 + t6);
        
        det <= std_logic_vector(res(7 downto 0));
    end if;
    
    
    
    end process;

end det_matrix_arch_proc;