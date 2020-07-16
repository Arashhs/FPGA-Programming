----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2020 06:45:24 AM
-- Design Name: 
-- Module Name: FIG5_Circuit - Behavioral
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

entity FIG5_Circuit is
    Port ( A : in STD_LOGIC_VECTOR (1 downto 0);
           B : in STD_LOGIC_VECTOR (1 downto 0);
           C : in STD_LOGIC_VECTOR (1 downto 0);
           D : in STD_LOGIC_VECTOR (1 downto 0);
           F : out STD_LOGIC_VECTOR (1 downto 0));
end FIG5_Circuit;

architecture MAX_ARCH of FIG5_Circuit is



component Maximum 
Port ( A : in STD_LOGIC_VECTOR (1 downto 0);
           B : in STD_LOGIC_VECTOR (1 downto 0);
           RES : out STD_LOGIC_VECTOR (1 downto 0));
end component;

signal s1, s2 : STD_LOGIC_VECTOR (1 downto 0);


for MAX1, MAX2: Maximum 
    use entity work.Maximum(MAX_POS);
    
for MAX3: Maximum 
    use entity work.Maximum(MAX_SOP);
    
begin
    
    MAX1: Maximum port map(A, B, s1);
    MAX2: Maximum port map(C, D, s2);
    MAX3: Maximum port map(s1, s2, F);

end MAX_ARCH;
