--/*
--***********************************************************
--  Design Automation Course Homework (Spring, 2020 Semester)
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce.aut.ac.ir
--  Created by TA (ali[dot]mohammadpour[at]ac[dot]ir)
--  *********************************************************
--  Student ID  : 9631019
--  Student Name: Arash Hajisafi
--  Student Mail: hajisafiarash@gmail.com
--  *********************************************************
--  Module: ProblemSet 5, Problem 1, Fibonacci Testbench
--  *********************************************************
--  Additional Comments:
--*/

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

-----------------------------------------------------------

entity tb_fibo_block_ram is
end entity tb_fibo_block_ram;

-----------------------------------------------------------

architecture testbench of tb_fibo_block_ram is

	component fibo_block_ram is
		port (
			clock : in  std_logic ;
			din   : in  std_logic_vector(3 downto 0) ;   -- input: n
			dout  : out std_logic_vector(11 downto 0)) ; -- output : fib(n)
	end component fibo_block_ram;

	signal clock : std_logic := '0';
	signal din   : std_logic_vector(3 downto 0);
	signal dout  : std_logic_vector(11 downto 0);
		

begin
	-- Design Under Test
	dut : fibo_block_ram
		port map (
			clock => clock,
			din   => din ,
			dout  => dout
		);

	-- Clock Generation
	clock <= not clock after 5 ns;
	
       
           -- write process for read from filter.data file
	process(clock)
        variable data_out: unsigned(11 downto 0) := (others=>'0');
        variable data_in: unsigned(3 downto 0) := (others=>'0');
        variable check: boolean := false;
        begin
            if(falling_edge(clock)) then
                if(not check) then
                    din <= std_logic_vector(data_in);
                    if(data_in = "1111") then
                        check := true;
                    else
                        data_in := data_in + 1;
                    end if;
                else
                     null;
                end if; 
          end if; 
        end process; 
        

        
        process(clock)
            file f: text open write_mode is "fibdata.txt";
            variable l: line;
            variable data_out: unsigned(11 downto 0) := (others=>'0');
            variable data_in: unsigned(3 downto 0) := (others=>'0');
            variable str: string(1 to 2) := ", ";
            variable check: boolean := false;
            begin
                data_in := unsigned(din);
                data_out := unsigned(dout);
                if(falling_edge(clock)) then
                    if(not check) then
                        write(l, din);
                        write(l, str);
                        write(l, to_integer(data_in));
                        write(l, str);
                        write(l, dout);
                        write(l, str);
                        write(l, to_integer(data_out));
                        if(data_in >= "0000" and data_in <= "1111") then
                            writeline(f, l);
                        else
                            l := "";
                        end if;
                        if(din = "1111") then
                            check := true;
                        else
                            null;
                        end if;
                    else
                        file_close(f);
                    end if;
                        
              end if; 
        end process; 
        
           
end architecture testbench;