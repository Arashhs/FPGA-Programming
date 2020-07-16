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
--  Module: ProblemSet 4, Problem 3, Zero Deletion Detector
--  *******************************************************
--  Additional Comments:
--*/

library ieee;
use ieee.std_logic_1164.all;

entity zero_deletion_detector is
	port (
		clock    : in  std_logic ;
		din      : in  std_logic ;
		reset    : in  std_logic ;
		enable   : in  std_logic ;
		detected : out std_logic ) ;
end zero_deletion_detector;

architecture zero_deletion_detector_arch of zero_deletion_detector is

	-- write your code, module is a fsm
	type state_type is (s0, s1, s2, s3, s4, s5);
	signal cur_state, next_state: state_type;

begin

	-- write your code here
	
	process(clock, reset, enable)
    begin
        if(reset = '1') then
            cur_state <= S0;
        elsif(enable = '0') then
            null;
        elsif(rising_edge(clock)) then
            cur_state <= next_state;
        end if;
    end process;
    
    process(cur_state, din)
    begin
        case cur_state is
            when s0 =>
                if(din = '1') then
                    next_state <= s1;
                else
                    next_state <= s0;
                end if;
                
            when s1 =>
                if(din = '1') then
                    next_state <= s2;
                else
                    next_state <= s0;
                end if;
                
            when s2 =>
                if(din = '1') then
                    next_state <= s3;
                else
                    next_state <= s0;
                end if;
                
            when s3 =>
                if(din = '1') then
                    next_state <= s4;
                else
                    next_state <= s0;
                end if;
                
            when s4 =>
                if(din = '1') then
                    next_state <= s5;
                else
                    next_state <= s0;
                end if;
                
            when s5 =>
                next_state <= s0;
        end case;
    end process;
    
    process(cur_state, din, enable)
    begin
        if(enable = '0') then
            detected <= '0';
        else
            case cur_state is
                when s5 =>
                    if(din = '0') then
                        detected <= '1';
                    else
                        detected <= '0';
                    end if;
                    
                when others =>
                    detected <= '0';
            end case;
        end if;
    end process;


end zero_deletion_detector_arch;