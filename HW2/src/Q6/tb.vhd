----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/27/2020 06:54:11 PM
-- Design Name: 
-- Module Name: tb - Behavioral
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

entity tb is
--  Port ( );
end tb;

architecture Behavioral of tb is
signal din : std_logic_vector(7 downto 0) ;
signal dout : std_logic_vector(2 downto 0);

component problem_2_6 is
	port (
		din : in std_logic_vector(7 downto 0) ;
		dout : out std_logic_vector(2 downto 0)) ;

end component;
begin

demo: problem_2_6 port map (din, dout);

din <= "10011010",
       "00011010" after 10ns,
       "00000001" after 20ns,
       "00010000" after 30ns,
       "00101100" after 40ns,
       "11111111" after 50ns;


end Behavioral;
