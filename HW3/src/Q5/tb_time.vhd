----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/11/2020 09:10:37 AM
-- Design Name: 
-- Module Name: tb_time - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
use work.time_pack.all;

entity tb_time is
--  Port ( );
end tb_time;

architecture Behavioral of tb_time is
     signal time_x, time_y, time_o: aut_time_t;
     signal operation: std_logic;

component problem_3_5 is
	port (
		time_x  : in aut_time_t ;
		time_y 	 : in aut_time_t ;
		operation	 : in std_logic ;
		time_o 	 : out aut_time_t );
end component;
begin
    demo: problem_3_5 port map (time_x, time_y, operation, time_o);
    operation <= '0', '1' after 20ns;
    
    time_x.second <= 45, 21 after 30ns;
    time_x.minute <= 23, 43 after 30ns;
    time_x.hour <= 1, 5 after 30ns;
    
    time_y.second <= 21, 45 after 30ns;
    time_y.minute <= 43, 23 after 30ns;
    time_y.hour <= 5, 1 after 30ns;
    
    
    

end Behavioral;
