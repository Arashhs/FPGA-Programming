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

architecture det_matrix_structural_arch of det_matrix is
    component mul8 is
	port (
		a   : in  std_logic_vector(7 downto 0);
		b   : in  std_logic_vector(7 downto 0);
		res   : out  std_logic_vector(7 downto 0));

    end component;

 --   signal ar, br, cr, dr, er, fr, gr, hr, ir: std_logic_vector(7 downto 0);
    signal d1, d2, d3, d4, d5,d6, d7, d8, d9: std_logic_vector(7 downto 0);
    signal t1, t2, t3, t4, t5, t6, res, reg: std_logic_vector(7 downto 0);
begin
    mt1: mul8 port map(a, e, d1);
    mt2: mul8 port map(d1, i, t1);
    
    mt3: mul8 port map(b, f, d2);
    mt4: mul8 port map(d2, g, t2);
    
    mt5: mul8 port map(c, d, d3);
    mt6: mul8 port map(d3, h, t3);
    
    mt7: mul8 port map(c, e, d4);
    mt8: mul8 port map(d4, g, t4);
    
    mt9: mul8 port map(b, d, d5);
    mt10: mul8 port map(d5, i, t5);
    
    mt11: mul8 port map(a, f, d6);
    mt12: mul8 port map(d6, h, t6);
    
    res <= std_logic_vector((signed(t1) + signed(t2) + signed(t3)) - (signed(t4) + signed(t5) + signed(t6)));
    
    process(clk)
    begin
        if(rising_edge(clk)) then
            reg <= res;
        end if;
    end process;
    
    det <= reg;

end det_matrix_structural_arch;



library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mul8 is
	port (
		a   : in  std_logic_vector(7 downto 0);
		b   : in  std_logic_vector(7 downto 0);
		res   : out  std_logic_vector(7 downto 0));

end mul8;

architecture mul_arch of mul8 is
    signal mul_res: std_logic_vector(15 downto 0);
    begin
    process(a, b)
    begin
        mul_res <= std_logic_vector(signed(a) * signed(b));
    end process;
    
    res <= mul_res(7 downto 0);
end mul_arch;
