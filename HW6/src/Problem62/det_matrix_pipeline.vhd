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

architecture det_matrix_pipeline_arch of det_matrix is
    component mul8 is
	port (
		a   : in  std_logic_vector(7 downto 0);
		b   : in  std_logic_vector(7 downto 0);
		res   : out  std_logic_vector(7 downto 0));

    end component;

 --   signal ar, br, cr, dr, er, fr, gr, hr, ir: std_logic_vector(7 downto 0);
    signal d1, d2, d3, d4, d5,d6, d7, d8, d9: std_logic_vector(7 downto 0);
    signal t1, t2, t3, t4, t5, t6, res, reg: std_logic_vector(7 downto 0);
    
    signal ar, br, cr, dr, er, fr, gr, hr, ir: std_logic_vector(7 downto 0);
    signal d1r, d2r, d3r, d4r, d5r,d6r, d7r, d8r, d9r: std_logic_vector(7 downto 0);
    signal t1r, t2r, t3r, t4r, t5r, t6r, resr, regr: std_logic_vector(7 downto 0);
begin
    mt1: mul8 port map(ar, er, d1);
    mt2: mul8 port map(d1r, ir, t1);
    
    mt3: mul8 port map(br, fr, d2);
    mt4: mul8 port map(d2r, gr, t2);
    
    mt5: mul8 port map(cr, dr, d3);
    mt6: mul8 port map(d3r, hr, t3);
    
    mt7: mul8 port map(cr, er, d4);
    mt8: mul8 port map(d4r, gr, t4);
    
    mt9: mul8 port map(br, dr, d5);
    mt10: mul8 port map(d5r, ir, t5);
    
    mt11: mul8 port map(ar, fr, d6);
    mt12: mul8 port map(d6r, hr, t6);
    
    res <= std_logic_vector((signed(t1r) + signed(t2r) + signed(t3r)) - (signed(t4r) + signed(t5r) + signed(t6r)));
    
    process(clk)
    begin
        if(rising_edge(clk)) then
        -- First Level
            ar <= a;
            br <= b;
            cr <= c;
            dr <= d;
            er <= e;
            fr <= f;
            gr <= g;
            hr <= h;
            ir <= i;
            
        -- Second Level
            d1r <= d1;
            d2r <= d2;
            d3r <= d3;
            d4r <= d4;
            d5r <= d5;
            d6r <= d6;
            
            t1r <= t1;
            t2r <= t2;
            t3r <= t3;
            t4r <= t4;
            t5r <= t5;
            t6r <= t6;
            
          -- Third Level

                
            reg <= res;
            
        end if;
    end process;
    
    det <= reg;

end det_matrix_pipeline_arch;



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
