----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2020 07:58:58 AM
-- Design Name: 
-- Module Name: tb_fig5 - Behavioral
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

entity tb_fig5 is
--  Port ( );
end tb_fig5;

architecture Behavioral of tb_fig5 is

component FIG5_Circuit
    Port ( A : in STD_LOGIC_VECTOR (1 downto 0);
           B : in STD_LOGIC_VECTOR (1 downto 0);
           C : in STD_LOGIC_VECTOR (1 downto 0);
           D : in STD_LOGIC_VECTOR (1 downto 0);
           F : out STD_LOGIC_VECTOR (1 downto 0));
end component;

signal A,B,C,D,F : STD_LOGIC_VECTOR (1 downto 0);

begin

circuit: FIG5_CIRCUIT port map(A ,B, C, D, F);
    
    A <= "01",
         "00" after 10ns, 
         "00" after 20ns;
         
    B <= "00",
         "10" after 10ns,
         "00" after 20ns,
         "01" after 30ns;
         
    C <= "00",
         "01" after 10ns,
         "00" after 20ns;
         
         
    D <= "11",
         "01" after 10ns, 
         "00" after 20ns,
         "01" after 30ns;


end Behavioral;
