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
--  Module: ProblemSet 4, Problem 3, Zero Delation Testbench
--  *********************************************************
--  Additional Comments:
--*/

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

-----------------------------------------------------------

entity tb_zero_deletion_module is
end entity tb_zero_deletion_module;

-----------------------------------------------------------

architecture testbench of tb_zero_deletion_module is

	component zero_deletion_module is
		port (
			clock    : in  std_logic ;
			din      : in  std_logic ;
			reset    : in  std_logic ;
			enable   : in  std_logic ;
			is_valid : out std_logic ;
			dout     : out std_logic ;
			detected : out std_logic ) ;
	end component;

	signal clock    : std_logic := '0';
	signal din      : std_logic;
	signal reset    : std_logic;
	signal enable   : std_logic;
	signal is_valid : std_logic;
	signal dout     : std_logic;
	signal detected : std_logic;
	
	signal end_file : std_logic := '0';
	signal num_detections : integer := 0;


begin
	-- Zero Deletion Module Under Test
	dut : zero_deletion_module
		port map (
			clock    => clock ,
			din      => din ,
			reset    => reset ,
			enable   => enable ,
			is_valid => is_valid,
			dout     => dout ,
			detected => detected
		);

	-- Clock Generation
	clock <= not clock after 10 ns;

	-- reset before read file and write file
	reset <= '1' after 00 ns, '0' after 40 ns;

	-- enable module after reset
	enable <= '0' after 00 ns, '1' after 40 ns;

	-- write process for read from datain.txt file 
	-- read data when enable be active and stop reading enf of file
	
    process(clock)
        file f: text is "datain.txt";
        variable l: line;
        variable i: std_logic;

	begin
	   if(rising_edge(clock)) then
	       if(end_file = '0' and enable = '1') then
	           if(endfile(f)) then
	               end_file <= '1';
	               file_close(f);
	               din <= 'U';
	           else
                   readline(f, l);
                   read(l, i);
                   din <= i;
	           end if;
	       end if;
	        
	      
	   end if;
	   
    end process;
	-------------------------------------------------------------------
	-- write process for write to dataout.txt file
	-- write data when data is valid
    process(clock)
        file f: text open write_mode is "dataout.txt";
   --    file f2: text is "dataout.txt";
        variable l: line;
        variable i: std_logic;

	begin
	   if(rising_edge(clock)) then
	       if(is_valid = '1' and (dout = '0' or dout = '1')) then
	           i := dout;
	           write(l, i);
	           writeline(f, l);
	       elsif(end_file = '1') then
	           file_close(f);
	       end if;
	       
	   end if;
	   
    end process;
	-------------------------------------------------------------------
	--  write a process for assert bellow message in console (terminal)
	--	zero deletion detected at [now-time]
	--  total number of deletions: [number of deletions]
	process(detected)
	begin
	   if(detected = '1') then
	       num_detections <= num_detections + 1;
	       
        end if;
	end process;
	
	assert
        (detected = '1')
    report
        "zero deletion detected at " & time'image(NOW) & LF & "total number of deletions: " & integer'image(num_detections)
    severity note;
	

end architecture testbench;