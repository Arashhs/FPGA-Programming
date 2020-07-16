----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/26/2020 06:48:17 AM
-- Design Name: 
-- Module Name: sort_tb - Behavioral
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

entity sort_tb is
 --	port () ;
end sort_tb;

architecture Behavioral of sort_tb is
    signal a, b, c, d, y0, y1, y2, y3: std_logic_vector(7 downto 0);
    signal mode: std_logic;
    
    component problem_2_2 is
	port (
		a : in std_logic_vector(7 downto 0) ;
		b : in std_logic_vector(7 downto 0) ;
		c : in std_logic_vector(7 downto 0) ;
		d : in std_logic_vector(7 downto 0) ;
		mode : in std_logic ;
		y0 : out std_logic_vector(7 downto 0) ;
		y1 : out std_logic_vector(7 downto 0) ;
		y2 : out std_logic_vector(7 downto 0) ;
		y3 : out std_logic_vector(7 downto 0)
		) ;
    end component;

begin
    demo: problem_2_2 port map (a, b, c, d, mode, y0, y1, y2, y3);
    
    mode <= '1',
            '0' after 25ns,
            '1' after 50ns,
            '0' after 100ns;
            
    a <= "11001010",
         "00000001" after 20ns,
         "00110111" after 40ns,
         "00000000" after 60ns; 
    

         b <= "11101010",
         "00110001" after 20ns,
         "00101101" after 40ns,
         "00010000" after 60ns; 
         
         c <= "01001010",
         "10000001" after 20ns,
         "00111111" after 40ns,
         "00110000" after 60ns; 
         
         d <= "10001010",
         "11111111" after 20ns,
         "00100001" after 40ns,
         "00101010" after 60ns;
          
end Behavioral;
