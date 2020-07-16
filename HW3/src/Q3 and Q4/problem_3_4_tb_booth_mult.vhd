----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/11/2020 10:22:15 PM
-- Design Name: 
-- Module Name: problem_3_4_tb_booth_mult - Behavioral
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
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity problem_3_4_tb_booth_mult is
--  Port ( );
end problem_3_4_tb_booth_mult;


architecture Behavioral of problem_3_4_tb_booth_mult is
signal clk : std_logic := '0' ;
signal reset : std_logic ;
signal input_x : std_logic_vector(7 downto 0) ;
signal input_y : std_logic_vector(7 downto 0) ;
signal product : std_logic_vector(15 downto 0);


component booth_multiplier is

	generic (
		n : positive := 8
	);
	port (
		clk : in std_logic ;
		reset : in std_logic ;
		m : in std_logic_vector(n-1 downto 0) ;
		r : in std_logic_vector(n-1 downto 0) ;
		result : out std_logic_vector((2 * n - 1) downto 0)
  );

end component;

begin
    multiplier: booth_multiplier generic map(8) port map(clk, reset, input_x, input_y, product);
    
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
    
    reset <= '0', '1' after 10ns, '0' after 40ns;
    
 --   input_x <= (others => '0'), std_logic_vector(to_signed(7, 8)) after 40ns, std_logic_vector(to_signed(10, 8)) after 80ns;
 --   input_y <= (others => '0'), std_logic_vector(to_signed(9, 8)) after 40ns, std_logic_vector(to_signed(12, 8)) after 80ns;
    input_x <= std_logic_vector(to_signed(10, 8));
    input_y <= std_logic_vector(to_signed(12, 8));
    assert
         (product = std_logic_vector(to_signed(63, 8)))
      report
         "Product is correct!"
      severity note;

end Behavioral;
