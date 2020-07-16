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
--  Module: ProblemSet 4, Problem 4, Squence Detector 
--  *******************************************************
--  Additional Comments:
--*/

library ieee;
use ieee.std_logic_1164.all;

entity sequence_detector is
	port (
		clock    : in  std_logic ;
		reset    : in  std_logic ;
		din      : in  std_logic ;
		detected : out std_logic ) ;
end sequence_detector;

architecture sequence_detector_arch of sequence_detector is

	-- write your code, module is a fsm (one-hot)
	type state_type is (start, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13);
	signal cur_state, next_state: state_type;
	
	attribute fsm_encoding : string;
    attribute fsm_encoding of cur_state : signal is "johnson";

begin

	-- write your code here
	process(clock, reset)
    begin
        if(reset = '1') then
            cur_state <= start;
        elsif(rising_edge(clock)) then
            cur_state <= next_state;
        end if;
    end process;
    
    
    process(cur_state, din)
    begin
        case cur_state is
            when start =>
                if(din = '1') then
                    next_state <= s1;
                else
                    next_state <= start;
                end if;
                
            when s1 =>
                if(din = '1') then
                    next_state <= s1;
                else
                    next_state <= s2;
                end if;
                
            when s2 =>
                if(din = '1') then
                    next_state <= s3;
                else
                    next_state <= s9;
                end if;
                
            when s3 =>
                if(din = '1') then
                    next_state <= s4;
                else
                    next_state <= s2;
                end if;
                
            when s4 =>
                if(din = '1') then
                    next_state <= s1;
                else
                    next_state <= s5;
                end if;
                
            when s5 =>
                if(din = '1') then
                    next_state <= s3;
                else
                    next_state <= s6;
                end if;
                
            when s6 =>
                if(din = '1') then
                    next_state <= s7;
                else
                    next_state <= start;
                end if;
                
            when s7 =>
                if(din = '1') then
                    next_state <= s8;
                else
                    next_state <= s11;
                end if;
                
            when s8 =>
                if(din = '1') then
                    next_state <= s1;
                else
                    next_state <= s2;
                end if;
                
            when s9 =>
                if(din = '1') then
                    next_state <= s10;
                else
                    next_state <= start;
                end if;
                
            when s10 =>
                if(din = '1') then
                    next_state <= s1;
                else
                    next_state <= s11;
                end if;
                
            when s11 =>
                if(din = '1') then
                    next_state <= s3;
                else
                    next_state <= s12;
                end if;
                
            when s12 =>
                if(din = '1') then
                    next_state <= s13;
                else
                    next_state <= start;
                end if;
                
            when s13 =>
                if(din = '1') then
                    next_state <= s1;
                else
                    next_state <= s11;
                end if;
        end case;
    end process;
    
    
    process(cur_state, din)
    begin
        case cur_state is
            when s7 =>
                if(din = '1') then
                    detected <= '1';
                else
                    detected <= '0';
                end if;
                
            when s12 =>
                if(din = '1') then
                    detected <= '1';
                else
                    detected <= '0';
                end if;
                            
            when others =>
            detected <= '0';
            
        end case;
    end process;

end sequence_detector_arch;