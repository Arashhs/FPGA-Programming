----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/11/2020 08:08:34 AM
-- Design Name: 
-- Module Name: tb_sipo - Behavioral
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

entity tb_sipo is
--  Port ( );
end tb_sipo;

architecture Behavioral of tb_sipo is
signal clk :  std_logic := '0' ;
signal ser_in :  std_logic ;
signal reset :  std_logic ;
signal shift_en :  std_logic ;
signal para_out :  std_logic_vector ( 7 downto 0);
component sipo is
	port (
		clk : in std_logic ;
		ser_in : in std_logic ;
		reset : in std_logic ;
		shift_en : in std_logic ;
		para_out : out std_logic_vector );
end component;
begin
    demo: sipo port map (clk, ser_in, reset, shift_en, para_out);
    process
    begin
      for i in 1 to 30 loop
        clk <= not clk;
        wait for 5 ns;
        clk <= not clk;
        wait for 5 ns;
      end loop;
      wait;  -- simulation stops here
    end process;
    
    reset <= '0', '1' after 10ns, '0' after 20ns;
    shift_en <= '0', '1' after 50ns, '0' after 130ns;
    
    ser_in <= '0', '1' after 20ns, '0' after 58ns, '1' after 88ns, '0' after 98ns, '1' after 108ns;
end Behavioral;
