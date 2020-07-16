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
--  Module: ProblemSet 5, Problem 1, Fibonacci Module
--  *******************************************************
--  Additional Comments:
--*/

library ieee;
use ieee.std_logic_1164.all;

Library UNISIM;
use UNISIM.vcomponents.all;
library UNIMACRO;
use unimacro.Vcomponents.all;

--------------------------------------------------------------
-- source code should be synthesizable, add ports if needed !
--------------------------------------------------------------
entity fibo_block_ram is
	port (
		clock : in  std_logic ;
		din   : in  std_logic_vector(3 downto 0) ;   -- input: n
		dout  : out std_logic_vector(11 downto 0)) ; -- output : fib(n)
end fibo_block_ram;

--------------------------------------------------------------
-- Describe Block RAM to store Fibonacci series n-th values
-- you can use Primitives and macros like BRAM_SINGLE_MACRO 
-- please read UG953 Page 207 for instantiate MACRO
-- also you can describe Block RAM from scratch
--------------------------------------------------------------

architecture fibo_block_ram_arch of fibo_block_ram is
    
	-- write your code here
	
	signal ADDR: std_logic_vector(9 downto 0);
	signal DI: std_logic_vector(11 downto 0);
	signal EN, REGCE, RST: std_ulogic;
	signal WE: std_logic_vector(1 downto 0);
		


    
	

begin
    ADDR(9 downto 4) <= "000000";
    ADDR(3 downto 0) <= din;
    DI <= "010000000000";
    EN <= '1';
    REGCE <= '0';
    RST <= '0';
    WE <= "00";

	-- write your code here
    BRAM_SINGLE_MACRO_inst : BRAM_SINGLE_MACRO
    generic map (
     BRAM_SIZE => "18Kb", -- Target BRAM, "18Kb" or "36Kb"
     DEVICE => "7SERIES", -- Target Device: "VIRTEX5", "7SERIES", "VIRTEX6, "SPARTAN6"
     DO_REG => 0, -- Optional output register (0 or 1)
     INIT => X"000000000000000000", -- Initial values on output port
     INIT_FILE => "NONE",
     WRITE_WIDTH => 12, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
     READ_WIDTH => 12, -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
     SRVAL => X"000000000000000000", -- Set/Reset value for port output
     WRITE_MODE => "WRITE_FIRST", -- "WRITE_FIRST", "READ_FIRST" or "NO_CHANGE"
     -- The following INIT_xx declarations specify the initial contents of the RAM
     INIT_00 => X"0262017900E900900059003700220015000D0008000500030002000100010000")
    port map (
     DO => dout, -- Output data, width defined by READ_WIDTH parameter
     ADDR => ADDR, -- Input address, width defined by read/write port depth
     CLK => clock, -- 1-bit input clock
     DI => DI, -- Input data port, width defined by WRITE_WIDTH parameter
     EN => EN, -- 1-bit input RAM enable
     REGCE => REGCE, -- 1-bit input output register enable
     RST => RST, -- 1-bit input reset
     WE => WE -- Input write enable, width defined by write port depth
    );
    -- End of BRAM_SINGLE_MACRO_inst instantiation
    
end fibo_block_ram_arch;