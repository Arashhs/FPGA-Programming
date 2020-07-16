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
--  Module: ProblemSet 3, Problem 5
--  *******************************************************
--  Additional Comments:
--*/

library ieee;
use ieee.std_logic_1164.all;


------------------------------------------------------
------------------------------------------------------

-- create new package and add time type to it.
-- in problem_3_5_arc use time type + and - opetations
package time_pack is

	type aut_time_t is record
	   hour: integer;
	   minute: integer;
	   second: integer;
    end record;
    
    function "+" (a, b: aut_time_t) return aut_time_t;
    function "-" (a, b: aut_time_t) return aut_time_t;

end package time_pack;

    
package body time_pack is

	function "+" (a, b: aut_time_t) return aut_time_t is
	variable h, m, s: integer;
	variable res: aut_time_t;
	begin
	s := a.second + b.second;
	if s >= 60 then
	   res.second := s mod 60;
	   m := 1 + a.minute + b.minute;
	else
	   res.second := s;
	   m := a.minute + b.minute;
    end if;
    
    if m >= 60 then
	   res.minute := m mod 60;
	   h := 1 + a.hour + b.hour;
	else
	   res.minute := m;
	   h := a.hour + b.hour;	       
    end if;
    
    res.hour := h mod 24;
    return res;
	end "+";
	
	
	function "-" (a, b: aut_time_t) return aut_time_t is
	variable h, m, s: integer;
	variable res: aut_time_t;
	begin
	s := a.second - b.second;
	if s < 0 then
	   res.second := 60 + s;
	   m := a.minute - b.minute - 1;
	else
	   res.second := s;
	   m := a.minute - b.minute;
    end if;
    
    if m < 0 then
	   res.minute := 60 + m;
	   h := a.hour - b.hour - 1;
	else
	   res.minute := m;
	   h := a.hour - b.hour;
    end if;
    
    if h < 0 then
        res.second := 0;
        res.minute := 0;
        res.hour := 0;
    else
        res.hour := h;
    end if;
    return res;
	end "-";

end package body time_pack;

use work.time_pack.all;
library ieee;
use ieee.std_logic_1164.all;

entity problem_3_5 is
	port (
		time_x  : in aut_time_t ;
		time_y 	 : in aut_time_t ;
		operation	 : in std_logic ;
		time_o 	 : out aut_time_t );
end problem_3_5;

architecture problem_3_5_arc of problem_3_5 is


begin

     process(time_x, time_y, operation) begin
        if operation = '0' then --sum
            time_o <= time_x + time_y;
        else
            time_o <= time_x - time_y;
        end if;
     end process;
          
     
     

end  problem_3_5_arc;

