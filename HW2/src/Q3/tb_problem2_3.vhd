----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/27/2020 06:08:25 PM
-- Design Name: 
-- Module Name: tb_problem2_3 - Behavioral
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

entity tb_problem2_3 is
--  Port ( );
end tb_problem2_3;

architecture Behavioral of tb_problem2_3 is


		signal data_inp :  std_logic_vector(7 downto 0) ;
		signal shamt :  std_logic_vector(2 downto 0) ;
		signal shmod :  std_logic ; 
		signal data_out :  std_logic_vector(7 downto 0);

		signal data_inpb :  std_logic_vector(7 downto 0) ;
		signal shamtb :  std_logic_vector(2 downto 0) ;
		signal shmodb :  std_logic ; 
		signal data_outb :  std_logic_vector(7 downto 0);

component problem_2_3_a is
	port (
		data_inp : in std_logic_vector(7 downto 0) ;
		shamt : in std_logic_vector(2 downto 0) ;
		shmod : in std_logic ; 
		data_out : out std_logic_vector(7 downto 0));

end component;

component problem_2_3_b is
	port (
		data_inp : in std_logic_vector(7 downto 0) ;
		shamt : in std_logic_vector(2 downto 0) ;
		shmod : in std_logic ; 
		data_out : out std_logic_vector(7 downto 0));

end component;



begin
    demo: problem_2_3_a port map(data_inp, shamt, shmod, data_out);
    demob: problem_2_3_a port map(data_inpb, shamtb, shmodb, data_outb);
    
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
             
             
             
             
    data_inpb <= "01011001",
                "11000010" after 20ns;
                
    shamtb <= "010",
             "110" after 10ns,
             "011" after 30ns,
             "111" after 40ns;
             
    shmodb <= '0',
             '1' after 15ns,
             '0' after 35ns,
             '1' after 50ns;
 
end Behavioral;