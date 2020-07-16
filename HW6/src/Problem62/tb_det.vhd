----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/20/2020 06:25:11 PM
-- Design Name: 
-- Module Name: tb_det - Behavioral
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

entity tb_det is
--  Port ( );
end tb_det;

architecture Behavioral of tb_det is

component det_matrix is
	port (
		clk : in  std_logic;
		a   : in  std_logic_vector(7 downto 0);
		b   : in  std_logic_vector(7 downto 0);
		c   : in  std_logic_vector(7 downto 0);
		d   : in  std_logic_vector(7 downto 0);
		e   : in  std_logic_vector(7 downto 0);
		f   : in  std_logic_vector(7 downto 0);
		g   : in  std_logic_vector(7 downto 0);
		h   : in  std_logic_vector(7 downto 0);
		i   : in  std_logic_vector(7 downto 0);
		det : out std_logic_vector(7 downto 0));

end component;

signal      clk :  std_logic := '0';
signal  	a   :  std_logic_vector(7 downto 0);
signal		b   :  std_logic_vector(7 downto 0);
signal		c   :  std_logic_vector(7 downto 0);
signal		d   :  std_logic_vector(7 downto 0);
signal		e   :  std_logic_vector(7 downto 0);
signal		f   :  std_logic_vector(7 downto 0);
signal		g   :  std_logic_vector(7 downto 0);
signal		h   :  std_logic_vector(7 downto 0);
signal		i   :  std_logic_vector(7 downto 0);
signal		det : std_logic_vector(7 downto 0);
for det_proc: det_matrix 
    use entity work.det_matrix(det_matrix_pipeline_arch);
begin
    det_proc: det_matrix port map(clk, a, b, c, d, e, f, g, h, i, det);
    
	-- Clock Generation
	clk <= not clk after 5 ns;
	
	a <= X"05" after 0 ns;
	b <= X"00";
	c <= X"01";
	d <= X"00";
	e <= X"04";
	f <= X"01";
	g <= X"01";
	h <= X"00";
	i <= X"05";

end Behavioral;
