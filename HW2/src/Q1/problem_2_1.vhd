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
--  Module: ProblemSet 2, Problem 1
--  *******************************************************
--  Additional Comments:
--*/
library ieee;
use ieee.std_logic_1164.all;


package problem_2_1 is

	-- write codes here 

--	type byte is array (7 downto 0) of bit;

	subtype IP is bit_vector(31 downto 0);
	subtype host_port is bit_vector(15 downto 0);
    subtype MAC is bit_vector (47 downto 0);
    subtype num is bit_vector (15 downto 0);
    
    type host is record
        host_IP: IP;
        host_port: host_port;
    end record;
    
    type numbers is record
        seq_num: num;
        ack_num: num;
        qos: num;
    end record;
    
    type udp_ip_stack is record
        source: host;
        destination: host;
        mac_addr: MAC;
        numbers: numbers;
    end record;
           

    
    
end package problem_2_1;

package body problem_2_1 is

	-- write codes here 	

end package body problem_2_1;

use work.problem_2_1.all;


entity demo is
	port (
		test: inout udp_ip_stack
		);
end demo;

architecture BEHAVE of demo is 
begin
  test.source.host_IP <= "00000000000000000000000000000010";
  test.source.host_port <= "0000000000000010";
  test.destination.host_ip <= "00000000000000000000000000000001";
  test.destination.host_port <= "0000000000000011";
  test.mac_addr <= "111111111111111111111111111111111111111111111111";
  test.numbers.seq_num <= "0000000000000100";
  test.numbers.ack_num <= "0000000000000110";
  test.numbers.qos <= "0000000000000111";
  
end BEHAVE;

