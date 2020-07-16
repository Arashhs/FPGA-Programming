----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/11/2020 07:26:00 AM
-- Design Name: 
-- Module Name: tb_piso - Behavioral
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

entity tb_piso is
--  Port ( );
end tb_piso;

architecture Behavioral of tb_piso is

signal clk : std_logic := '0' ;
signal para_in :  std_logic_vector(7 downto 0) ;
signal reset :  std_logic ;
signal load :  std_logic ; 
signal shift_en :  std_logic ; 
signal ser_out :  std_logic ;

component piso is
	port (
		clk : in std_logic ;
		para_in : in std_logic_vector ;
		reset : in std_logic ;
		load : in std_logic ; 
		shift_en : in std_logic ; 
		ser_out : out std_logic) ;
end component;

begin
    demo: piso port map(clk, para_in, reset, load, shift_en, ser_out);
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
    
    para_in <= "11001001";
    
    reset <= '0', '1' after 10ns, '0' after 20ns;
    load <= '1', '0' after 25ns;
    shift_en <= '0', '1' after 50ns;



end Behavioral;
