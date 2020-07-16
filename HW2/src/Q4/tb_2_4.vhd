----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/27/2020 09:38:09 PM
-- Design Name: 
-- Module Name: tb_2_4 - Behavioral
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

entity tb_2_4 is
--  Port ( );
end tb_2_4;

architecture Behavioral of tb_2_4 is


		signal data_inp :  std_logic_vector(7 downto 0) ;
		signal shamt :  std_logic_vector(2 downto 0) ;
		signal shmod :  std_logic ; 
		signal data_out :  std_logic_vector(7 downto 0);

component problem_2_4_a is
	port (
		data_inp : in std_logic_vector(7 downto 0) ;
		shamt : in std_logic_vector(2 downto 0) ;
		shmod : in std_logic ; 
		data_out : out std_logic_vector(7 downto 0));

end component;



begin
    demo: problem_2_4_a port map(data_inp, shamt, shmod, data_out);
    
    data_inp <= "01011001",
                "11000010" after 20ns;
                
    shamt <= "010",
             "110" after 10ns,
             "011" after 30ns,
             "111" after 40ns;
             
    shmod <= '0',
             '1' after 15ns,
             '0' after 35ns,
             '1' after 50ns;
             
 
end Behavioral;
