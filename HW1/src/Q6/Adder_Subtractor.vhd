----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2020 04:11:22 AM
-- Design Name: 
-- Module Name: Adder-Subtractor - Behavioral
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

entity Adder_Subtractor is
    port(
        InputA, InputB: in bit_vector(3 downto 0);
        Operation: in bit;
        Zero, Carry: out bit;
        Result: inout bit_vector(3 downto 0);
        Overflow, Neg: out bit
    );
end Adder_Subtractor;

architecture Behavioral of Adder_Subtractor is

    component FULLADDER port (A , B , CARRY_IN : in bit ; SUM , CARRY : out bit);
    end component;

    signal finalB: bit_vector(3 downto 0);
    signal c: bit_vector(4 downto 0);
begin

    F1: for i in 3 downto 0 generate
        finalB(i) <= InputB(i) xor Operation;
    end generate F1;

    F2: for I in 3 downto 0 generate
        FAS: FULLADDER port map(InputA(I), finalB(I), c(I), Result(I), c(I+1));
    end generate F2;

    c(0) <= Operation;
    Carry <= c(4);

    Overflow <= c(3) xor c(4);
    Neg <= Result(3);

    zero <= '1' when Result = "0000" else '0';

    

end Behavioral;


