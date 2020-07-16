----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2020 03:43:41 AM
-- Design Name: 
-- Module Name: FULLADDER - Behavioral
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

entity FULLADDER is  
    port (A,B, CARRY_IN: in   bit;
    SUM, CARRY:     out bit);
    end FULLADDER;

architecture STRUCT of FULLADDER is
    component  HALFADDER 
    port (X, Y : in   bit;
    SUM, CARRY : out bit);
    end component;

    component  ORGATE
    port (X, Y : in   bit;
    RES : out bit);
    end component;

    signal W_SUM, W_CARRY1, W_CARRY2: bit;
    begin
        MODULE1: HALFADDER port map( A, B, W_SUM, W_CARRY1 );
        MODULE2: HALFADDER port map ( W_SUM, CARRY_IN, SUM, W_CARRY2 );
        MODULE3: ORGATE port map ( W_CARRY2, W_CARRY1, CARRY );
end STRUCT;



