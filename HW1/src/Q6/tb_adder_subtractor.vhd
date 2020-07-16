----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2020 05:08:05 AM
-- Design Name: 
-- Module Name: tb_adder_subtractor - Behavioral
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

entity tb_adder_subtractor is
--  Port ( );
end tb_adder_subtractor;

architecture Behavioral of tb_adder_subtractor is
component Adder_Subtractor
    port(
        InputA, InputB: in bit_vector(3 downto 0);
        Operation: in bit;
        Zero, Carry: out bit;
        Result: inout bit_vector(3 downto 0);
        Overflow, Neg: out bit
    );
end component;

signal InputA, InputB, Result: bit_vector(3 downto 0);
signal Operation, Zero, Carry, Overflow, Neg: bit;

begin

    addsub: Adder_Subtractor port map(InputA, InputB, Operation, Zero, Carry, Result, Overflow, Neg);

    InputA <=   "1000",
                "0010" after 020 ns,
                "0111" after 030 ns,
                "0101" after 40 ns,
                "0101" after 070 ns;

    InputB <=   "0000",
                "0010" after 020 ns,
                "1011" after 030 ns,
                "0101" after 40 ns,
                "0011" after 070 ns;
                
    Operation <=   '1',
                '1' after 020 ns,
                '0' after 030 ns,
                '1' after 080 ns;
                


end Behavioral;
